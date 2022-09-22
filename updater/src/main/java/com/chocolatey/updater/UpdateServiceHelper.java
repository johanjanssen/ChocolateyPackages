package com.chocolatey.updater;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static java.lang.System.exit;

@Service
public class UpdateServiceHelper {
    Logger logger = LoggerFactory.getLogger(UpdateServiceHelper.class);

    @Value("${java.versions}")
    private List<String> versions;

    @Value("${graalvm.latest.java}")
    String graalVMLatestJavaVersion;

    RestTemplate restTemplate = new RestTemplate();

    ResponseEntity<List<Release>> retrieveReleasesFromAPI(String repositoryName) {
        ResponseEntity<List<Release>> releases = restTemplate.exchange(
                "https://api.github.com/repos/" + repositoryName + "/releases",
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<List<Release>>() {
                });
        return releases;
    }

    void tagLoggingAndVerification(Map<String, String> tagMap, String vendor) {
        logger.info("Used tags and corresponding Java versions for " + vendor + " :");
        tagMap.entrySet().forEach(entry -> {
            logger.info(entry.getKey() + " " + entry.getValue());
        });

        if (tagMap.keySet().size() > versions.size()) {
            logger.error("Multiple tags for a version, unclear which one to use!");
            exit(0);
        }
    }

    void changeChocolateyConfiguration(List<ChocolateyPackageInformation> chocolateyPackageInformationList) throws IOException {
        for (ChocolateyPackageInformation chocolateyPackageInformation : chocolateyPackageInformationList) {
            File file = new File("");
            File parentPath = file.getAbsoluteFile().getParentFile();
            Path chocolateyPackageDirectory = Paths.get(parentPath.getAbsolutePath(), chocolateyPackageInformation.getDirectory());
            if (Files.exists(chocolateyPackageDirectory)) {
                changeNuspecFile(chocolateyPackageInformation.getNuspecVersion(), chocolateyPackageDirectory);
                changeChocolateyInstallFile(chocolateyPackageInformation, chocolateyPackageDirectory);
            }

            // If version equals latest version: also latest package without the version should be updated
            boolean graalVMLatestVersion = chocolateyPackageInformation.getDirectory().startsWith("GraalVM") && chocolateyPackageInformation.getUrl().substring(chocolateyPackageInformation.getUrl().indexOf("graalvm-ce-java") + 15,chocolateyPackageInformation.getUrl().indexOf("-windows-amd64-")).equals(graalVMLatestJavaVersion);
            if (chocolateyPackageInformation.getVersion().equals(versions.get(versions.size()-1))) {
                Path latestChocolateyPackageDirectory = Paths.get(String.join("", chocolateyPackageDirectory.toString().split(chocolateyPackageInformation.getMainVersion())));
                changeNuspecFile(chocolateyPackageInformation.getNuspecVersion(), latestChocolateyPackageDirectory);
                changeChocolateyInstallFile(chocolateyPackageInformation, latestChocolateyPackageDirectory);
            } else if (graalVMLatestVersion) {
                Path latestChocolateyPackageDirectory = Paths.get(String.join("", chocolateyPackageDirectory.toString().substring(0, chocolateyPackageDirectory.toString().indexOf("-"))));
                changeNuspecFile(chocolateyPackageInformation.getNuspecVersion(), latestChocolateyPackageDirectory);
                changeChocolateyInstallFile(chocolateyPackageInformation, latestChocolateyPackageDirectory);
            }
        }
    }

    void changeChocolateyInstallFile(ChocolateyPackageInformation chocolateyPackageInformation, Path chocolateyPackageDirectory) throws IOException {
        String installFile = chocolateyPackageDirectory.toString() + File.separator + "tools" + File.separator + "chocolateyinstall.ps1";
        Path path = Paths.get(installFile);
        Stream<String> lines = Files.lines(path);

        List<String> replaced = lines
                .map(line -> line.replaceAll("(Url64bit = ').*(')", "$1" + chocolateyPackageInformation.getUrl() + "$2"))
                .map(line -> line.replaceAll("(Checksum64 = ').*(')", "$1" + chocolateyPackageInformation.getChecksum() + "$2"))
                .map(line -> line.replaceAll("(Url = ').*(')", "$1" + chocolateyPackageInformation.getUrl() + "$2")) // Only needed for zip files
                .map(line -> line.replaceAll("(Checksum = ').*(')", "$1" + chocolateyPackageInformation.getChecksum() + "$2")) // Only needed for zip files
                .map(line -> line.replaceAll("(\\$version = \").*(\")", "$1" + chocolateyPackageInformation.getVersion() + "$2")) // Only needed for zip files
                .collect(Collectors.toList());
        Files.write(path, replaced);
        lines.close();

        // Zip files require some more configuration.
        Path uninstallFilePath = Paths.get(chocolateyPackageDirectory.toString() + File.separator + "tools" + File.separator + "chocolateyuninstall.ps1");
        if (Files.exists(uninstallFilePath)) {
            logger.info("Extra configuration steps for zip file");

            Stream<String> uninstallFileLines = Files.lines(uninstallFilePath);
            List<String> replacedUninstallFileLines = uninstallFileLines
                    .map(line -> line.replaceAll("(\\$version = \").*(\")", "$1" + chocolateyPackageInformation.getVersion() + "$2")) // Only needed for zip files
                    .collect(Collectors.toList());
            Files.write(uninstallFilePath, replacedUninstallFileLines);
            uninstallFileLines.close();
        }
    }

    void changeNuspecFile(String nuspecVersion, Path chocolateyPackageDirectory) throws IOException {
        Files.walk(chocolateyPackageDirectory).filter(path -> Files.isRegularFile(path) && path.toString().endsWith(".nuspec")).forEach(path -> {
            try {
                Stream<String> lines = Files.lines(path);
                // Major versions don't contain .0.0, so it should be added
                if (!nuspecVersion.contains(".")) {
                    nuspecVersion + ".0.0";
                }
                List<String> replaced = lines.map(line -> line.replaceAll("(<version>).*(</version>)", "$1" + nuspecVersion + "$2")).collect(Collectors.toList());;
                Files.write(path, replaced);
                lines.close();

            } catch (IOException e) {
                e.printStackTrace();
            }

        });
    }

    static String bytesToHex(byte[] hash) {
        StringBuilder hexString = new StringBuilder(2 * hash.length);
        for (int i = 0; i < hash.length; i++) {
            String hex = Integer.toHexString(0xff & hash[i]);
            if(hex.length() == 1) {
                hexString.append('0');
            }
            hexString.append(hex);
        }
        return hexString.toString();
    }
}
