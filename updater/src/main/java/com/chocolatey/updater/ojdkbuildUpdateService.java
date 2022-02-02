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

// Tags ojdkbuild java-1.8.0-openjdk-1.8.0.322-1.b06, java-11-openjdk-11.0.14.9-1, java-17-openjdk-17.0.2.0.8-1
// Versions: java.versions=8u322,11.0.14,17.0.2
@Service
@Profile("ojdkbuild")
public class ojdkbuildUpdateService extends UpdateService {
    Logger logger = LoggerFactory.getLogger(ojdkbuildUpdateService.class);

    Map<String, String> retrieveTagsForVersions(String repositoryName) {
        ResponseEntity<List<Release>> releases = updateServiceHelper.retrieveReleasesFromAPI(repositoryName);

        Map<String, String> tagMap = new HashMap<>();

        for (String version : versions) {
            version = version.replace("u", ".0.");
            for (Release release : releases.getBody()) {
                if (release.getTag_name().contains(version) && !release.getTag_name().contains("debug") && !release.getTag_name().contains("x86")) {
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

        String repositoryName = "ojdkbuild/ojdkbuild";

        Map<String, String> tagMap = retrieveTagsForVersions(repositoryName);

        for (String tag : tagMap.keySet()) {
            Vendor vendor = restTemplate.getForObject("https://api.github.com/repos/" + repositoryName + "/releases/tags/" + tag, Vendor.class);

            Map<String, String> nameURLMap = vendor.getAssets().stream().collect(Collectors.toMap(Asset::getName, Asset::getBrowser_download_url));

            logger.info("Used assets:");
            for (Asset asset : vendor.getAssets()) {
                if (asset.getBrowser_download_url().endsWith(".msi") && !asset.getBrowser_download_url().contains("jre")) { //difference
                    logger.info("MSI found " + asset.getBrowser_download_url());
                    ChocolateyPackageInformation chocolateyPackageInformation = new ChocolateyPackageInformation();
                    chocolateyPackageInformation.setUrl(asset.getBrowser_download_url());
                    chocolateyPackageInformation.setVersion(tagMap.get(tag));
                    chocolateyPackageInformationList.add(chocolateyPackageInformation);
                } else if (asset.getName().endsWith(".msi.sha256") && !asset.getBrowser_download_url().contains("jre")) { //difference next lines
                    logger.info("Checksum found " + asset.getBrowser_download_url());
                    byte[] checksums = restTemplate.getForObject(URI.create(asset.getBrowser_download_url()), byte[].class);
                    String checksumString = new String(checksums, StandardCharsets.UTF_8);
                    String[] values = checksumString.split(" ");
                    for (ChocolateyPackageInformation chocolateyPackageInformationItem : chocolateyPackageInformationList) {
                        if (chocolateyPackageInformationItem.getUrl().equals(nameURLMap.get(values[2]))) {
                            chocolateyPackageInformationItem.setChecksum(values[0]);
                        }
                    }
                }
            }
        }
    }

    @Override
    void configureInstallationDirectory(List<ChocolateyPackageInformation> chocolateyPackageInformationList) {
        for (ChocolateyPackageInformation chocolateyPackageInformation : chocolateyPackageInformationList) {
            chocolateyPackageInformation.setDirectory("ojdkbuild" + chocolateyPackageInformation.getMainVersion());
        }
    }
}
