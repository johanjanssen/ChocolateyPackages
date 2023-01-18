package com.chocolatey.updater;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
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

@Service
@Profile("wildfly")
public class WildFlyUpdateService extends UpdateService {
    Logger logger = LoggerFactory.getLogger(WildFlyUpdateService.class);

    @Value("${wildfly.version}")
    String version;

    public WildFlyUpdateService(List<String> versions) {
        super(versions);
    }

    Map<String, String> retrieveTagsForVersions(String repositoryName) {
        ResponseEntity<List<Release>> releases = getUpdateServiceHelper().retrieveReleasesFromAPI(repositoryName);

        Map<String, String> tagMap = new HashMap<>();

        for (Release release : releases.getBody()) {
            if (release.getTag_name().equals(version)) {
                tagMap.put(release.getTag_name(), version);
            }
        }

        getUpdateServiceHelper().tagLoggingAndVerificationSingleVersion(tagMap, this.getClass().getName());
        return tagMap;
    }

    @Override
    void retrieveChocolateyPackageInformation(List<ChocolateyPackageInformation> chocolateyPackageInformationList) {
        RestTemplate restTemplate = new RestTemplate();

        String repositoryName = "wildfly/wildfly";

        Map<String, String> tagMap = retrieveTagsForVersions(repositoryName);

        for (String tag : tagMap.keySet()) {
            Vendor vendor = restTemplate.getForObject("https://api.github.com/repos/" + repositoryName + "/releases/tags/" + tag, Vendor.class);

            Map<String, String> nameURLMap = vendor.getAssets().stream().collect(Collectors.toMap(Asset::getName, Asset::getBrowser_download_url));

            logger.info("Used assets:");
            for (Asset asset : vendor.getAssets()) {
                String url = asset.getBrowser_download_url();
                if (url.endsWith("Final.zip") && Long.valueOf(1).equals(url.chars().filter(ch -> ch == '-').count()) && !url.contains("preview") && !url.contains("servlet") && !url.contains("src")) { //difference
                    logger.info("MSI found " + asset.getBrowser_download_url());
                    ChocolateyPackageInformation chocolateyPackageInformation = new ChocolateyPackageInformation();
                    chocolateyPackageInformation.setUrl(asset.getBrowser_download_url());
                    chocolateyPackageInformation.setVersion(tagMap.get(tag).substring(0, tagMap.get(tag).indexOf(".Final")));
                    chocolateyPackageInformationList.add(chocolateyPackageInformation);
                } else if (asset.getName().endsWith(".zip.sha1") && Long.valueOf(1).equals(url.chars().filter(ch -> ch == '-').count()) && !url.contains("preview") && !url.contains("servlet") && !url.contains("servlet")) { //difference next lines
                    logger.info("Checksum found " + asset.getBrowser_download_url());
                    byte[] checksums = restTemplate.getForObject(URI.create(asset.getBrowser_download_url()), byte[].class);
                    String checksumString = new String(checksums, StandardCharsets.UTF_8);
                    for (ChocolateyPackageInformation chocolateyPackageInformationItem : chocolateyPackageInformationList) {
                        if (chocolateyPackageInformationItem.getUrl().equals(asset.getBrowser_download_url().substring(0,asset.getBrowser_download_url().indexOf(".sha1")))) {
                            chocolateyPackageInformationItem.setChecksum(checksumString.trim());
                        }
                    }
                }
            }
        }
    }

    @Override
    void configureInstallationDirectory(List<ChocolateyPackageInformation> chocolateyPackageInformationList) {
        for (ChocolateyPackageInformation chocolateyPackageInformation : chocolateyPackageInformationList) {
            chocolateyPackageInformation.setDirectory("WildFly");
        }
    }
}
