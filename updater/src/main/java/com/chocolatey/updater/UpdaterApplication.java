package com.chocolatey.updater;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static java.lang.System.exit;

// Tags Liberica 8u322+6, 11.0.14+9, 17.0.2+9
// Tags ojdkbuild java-1.8.0-openjdk-1.8.0.322-1.b06, java-11-openjdk-11.0.14.9-1, java-17-openjdk-17.0.2.0.8-1
// Tags Sapmachine no 8, sapmachine-11.0.14, sapmachine-17.0.2
// Tags Corretto 8.322.06.2, 11.0.14.9.1, 17.0.2.8.1

@SpringBootApplication
public class UpdaterApplication implements CommandLineRunner {

    public static void main(String[] args) {
        SpringApplication.run(UpdaterApplication.class, args);
    }

    @Value("${java.versions}")
    private List<String> versions;


    public void retrieveDataFromAPI(List<ChocolateyPackageInformation> chocolateyPackageInformationList) throws Exception {
        RestTemplate restTemplate = new RestTemplate();

        ResponseEntity<List<Release>> releases = restTemplate.exchange(
                "https://api.github.com/repos/bell-sw/Liberica/releases",
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<List<Release>>() {
                });

        Map<String, String> tagMap = new HashMap<>();

        for (String version : versions) {
            for (Release release : releases.getBody()) {
                if (release.getTag_name().startsWith(version)) {
                    tagMap.put(release.getTag_name(), version);
                }
            }
        }

        if (tagMap.keySet().size() > versions.size()) {
            System.out.println("Multiple tags for a version, unclear which one to use!");
            exit(0);
        }

        for (String tag : tagMap.keySet()) {
            Vendor vendor = restTemplate.getForObject("https://api.github.com/repos/bell-sw/Liberica/releases/tags/" + tag, Vendor.class);

            Map<String, String> nameURLMap = vendor.getAssets().stream().collect(Collectors.toMap(Asset::getName, Asset::getBrowser_download_url));

            for (Asset asset : vendor.getAssets()) {
                if (asset.getBrowser_download_url().endsWith("msi") && asset.getBrowser_download_url().contains("amd64")) {
                    ChocolateyPackageInformation chocolateyPackageInformation = new ChocolateyPackageInformation();
                    chocolateyPackageInformation.setUrl(asset.getBrowser_download_url());
                    chocolateyPackageInformation.setVersion(tagMap.get(tag));
                    chocolateyPackageInformationList.add(chocolateyPackageInformation);
                } else if (asset.getName().equals("sha1sum.txt")) {
                    byte[] checksums = restTemplate.getForObject(URI.create(asset.getBrowser_download_url()), byte[].class);
                    String checksumString = new String(checksums, StandardCharsets.UTF_8);
                    checksumString.lines().filter(l -> l.endsWith("msi") && l.contains("amd64")).forEach(l -> {
                        String[] values = l.split(" ");
                        for (ChocolateyPackageInformation chocolateyPackageInformationItem : chocolateyPackageInformationList) {
                            if (chocolateyPackageInformationItem.getUrl().equals(nameURLMap.get(values[2]))) {
                                chocolateyPackageInformationItem.setChecksum(values[0]);
                            }
                        }
                    });
                }
            }
        }
    }

    private void configureDirectory(List<ChocolateyPackageInformation> chocolateyPackageInformationList) throws IOException {
        for (ChocolateyPackageInformation chocolateyPackageInformation : chocolateyPackageInformationList) {
            chocolateyPackageInformation.getVersion();
            chocolateyPackageInformation.getUrl();

            String filename = chocolateyPackageInformation.getUrl().substring(chocolateyPackageInformation.getUrl().lastIndexOf("/"));
            // Full amd64-full.msi Lite amd64-lite.msi or no type amd64.msi
            String packageTypeTmp = filename.substring(filename.indexOf("amd64") + 5, filename.indexOf(".msi")).replaceAll("-", "");
            String packageType = "";
            if (!packageTypeTmp.isEmpty()) {
                packageType = packageTypeTmp.substring(0, 1).toUpperCase() + packageTypeTmp.substring(1); // Start with uppercase letter
            }
            String jdkOrJre = "JDK";
            if (filename.toLowerCase().contains("jre")) {
                jdkOrJre = "JRE";
            }

            chocolateyPackageInformation.setDirectory("Liberica" + chocolateyPackageInformation.getMainVersion() + jdkOrJre + packageType);
        }
    }

    private void changeChocolateyConfiguration(List<ChocolateyPackageInformation> chocolateyPackageInformationList) throws IOException {
        for (ChocolateyPackageInformation chocolateyPackageInformation : chocolateyPackageInformationList) {
            File file = new File("");
            File parentPath = file.getAbsoluteFile().getParentFile();
            Path chocolateyPackageDirectory = Paths.get(parentPath.getAbsolutePath(), chocolateyPackageInformation.getDirectory());
            if (Files.exists(chocolateyPackageDirectory)) {
                changeNuspecFile(chocolateyPackageInformation.getNuspecVersion(), chocolateyPackageDirectory);
                changeChocolateyInstallFile(chocolateyPackageInformation, chocolateyPackageDirectory);
            }

            // If version equals latest version: also latest package without the version should be updated
            if (chocolateyPackageInformation.getVersion().equals(versions.get(versions.size()-1))) {
                Path latestChocolateyPackageDirectory = Paths.get(String.join("", chocolateyPackageDirectory.toString().split(chocolateyPackageInformation.getMainVersion())));
                changeNuspecFile(chocolateyPackageInformation.getNuspecVersion(), latestChocolateyPackageDirectory);
                changeChocolateyInstallFile(chocolateyPackageInformation, latestChocolateyPackageDirectory);
            }
        }
    }

    private void changeChocolateyInstallFile(ChocolateyPackageInformation chocolateyPackageInformation, Path chocolateyPackageDirectory) throws IOException {
        String installFile = chocolateyPackageDirectory.toString() + File.separator + "tools" + File.separator + "chocolateyinstall.ps1";
        Path path = Paths.get(installFile);
        Stream<String> lines = Files.lines(path);
        List<String> replaced = lines.map(line -> line.replaceAll("(Url64bit = ').*(')", "$1" + chocolateyPackageInformation.getUrl() + "$2")).map(line -> line.replaceAll("(Checksum64 = ').*(')", "$1" + chocolateyPackageInformation.getChecksum() + "$2")).collect(Collectors.toList());
        Files.write(path, replaced);
        lines.close();
    }

    private void changeNuspecFile(String nuspecVersion, Path chocolateyPackageDirectory) throws IOException {
        Files.walk(chocolateyPackageDirectory).filter(path -> Files.isRegularFile(path) && path.toString().endsWith(".nuspec")).forEach(path -> {
            try {
                Stream<String> lines = Files.lines(path);
                List<String> replaced = lines.map(line -> line.replaceAll("(<version>).*(</version>)", "$1" + nuspecVersion + "$2")).collect(Collectors.toList());;
                Files.write(path, replaced);
                lines.close();

            } catch (IOException e) {
                e.printStackTrace();
            }

        });
    }


    @Override
    public void run(String... args) throws Exception {
        List<ChocolateyPackageInformation> chocolateyPackageInformationList = new ArrayList<>();
        retrieveDataFromAPI(chocolateyPackageInformationList);
        configureDirectory(chocolateyPackageInformationList);
        System.out.println("Data used");
        for (ChocolateyPackageInformation chocolateyPackageInformation : chocolateyPackageInformationList) {
            System.out.println(chocolateyPackageInformation);
        }
        changeChocolateyConfiguration(chocolateyPackageInformationList);
    }
}
