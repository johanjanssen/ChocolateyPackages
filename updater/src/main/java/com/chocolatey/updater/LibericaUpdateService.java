package com.chocolatey.updater;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Profile;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

// Tags Liberica 8u322+6, 11.0.14+9, 17.0.2+9
@Service
@Profile("liberica")
public class LibericaUpdateService extends UpdateService {
    Logger logger = LoggerFactory.getLogger(LibericaUpdateService.class);

    Map<String, String> retrieveTagsForVersions(String repositoryName) {
        ResponseEntity<List<Release>> releases = updateServiceHelper.retrieveReleasesFromAPI(repositoryName);

        Map<String, String> tagMap = new HashMap<>();

        for (String version : versions) {
            for (Release release : releases.getBody()) {
                if (release.getTag_name().startsWith(version)) {
                    tagMap.put(release.getTag_name(), version);
                }
            }
        }

        updateServiceHelper.tagLoggingAndVerification(tagMap, this.getClass().getName());

        return tagMap;
    }

    @Override
    void retrieveChocolateyPackageInformation(List<ChocolateyPackageInformation> chocolateyPackageInformationList) {
        RestTemplate restTemplate = new RestTemplate();

        String repositoryName = "bell-sw/Liberica";

        Map<String, String> tagMap = retrieveTagsForVersions(repositoryName);

        for (String tag : tagMap.keySet()) {
            Vendor vendor = restTemplate.getForObject("https://api.github.com/repos/" + repositoryName + "/releases/tags/" + tag, Vendor.class);

            Map<String, String> nameURLMap = vendor.getAssets().stream().collect(Collectors.toMap(Asset::getName, Asset::getBrowser_download_url));

            for (Asset asset : vendor.getAssets()) {
                if (asset.getBrowser_download_url().endsWith(".msi") && asset.getBrowser_download_url().contains("amd64")) {
                    ChocolateyPackageInformation chocolateyPackageInformation = new ChocolateyPackageInformation();
                    chocolateyPackageInformation.setUrl(asset.getBrowser_download_url());
                    chocolateyPackageInformation.setVersion(tagMap.get(tag));
                    chocolateyPackageInformationList.add(chocolateyPackageInformation);
                } else if (asset.getName().equals("sha1sum.txt")) {
                    byte[] checksums = restTemplate.getForObject(URI.create(asset.getBrowser_download_url()), byte[].class);
                    String checksumString = new String(checksums, StandardCharsets.UTF_8);
                    checksumString.lines().filter(l -> l.endsWith(".msi") && l.contains("amd64")).forEach(l -> {
                        String[] values = l.split(" ");
                        for (ChocolateyPackageInformation chocolateyPackageInformationItem : chocolateyPackageInformationList) {
                            if (chocolateyPackageInformationItem.getUrl().equals(nameURLMap.get(values[1]))) {
                                chocolateyPackageInformationItem.setChecksum(values[0]);
                            }
                        }
                    });
                }
            }
        }
    }

    @Override
    void configureInstallationDirectory(List<ChocolateyPackageInformation> chocolateyPackageInformationList) {
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

}
