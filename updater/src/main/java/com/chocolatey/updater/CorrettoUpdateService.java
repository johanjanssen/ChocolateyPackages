package com.chocolatey.updater;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Profile;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

// Tags Corretto 8.322.06.2, 11.0.14.9.1, 17.0.2.8.1
// Versions: java.versions=8u322,11.0.14,17.0.2
@Service
@Profile("corretto")
public class CorrettoUpdateService extends UpdateService {
    Logger logger = LoggerFactory.getLogger(CorrettoUpdateService.class);

    Map<String, String> retrieveTagsForVersions(String repositoryName, String majorVersionString) {
        ResponseEntity<List<Release>> releases = updateServiceHelper.retrieveReleasesFromAPI(repositoryName);

        Map<String, String> tagMap = new HashMap<>();

        boolean versionFoundInGitTags = false;

        for (String version : versions) {
            // Only retrieve the version for this Git repo
            if (version.startsWith(majorVersionString)) {
                version = version.replace("u", ".");
                //if (version.startsWith("17.")) {
                for (Release release : releases.getBody()) {
                    if (release.getTag_name().contains(version)) {
                        tagMap.put(release.getTag_name(), version);
                        versionFoundInGitTags = true;
                    }
                }
                //}
                if (!versionFoundInGitTags) {
                    logger.error("Version " + version + " not found in the Git tags for " + this.getClass());
                }
            }
        }

        // Improve check as there's only one tag
        updateServiceHelper.tagLoggingAndVerification(tagMap, this.getClass().getName());
        return tagMap;
    }

    @Override
    void retrieveChocolateyPackageInformation(List<ChocolateyPackageInformation> chocolateyPackageInformationList) {
        RestTemplate restTemplate = new RestTemplate();




        for (String version : versions) {
            String[] versionStrings = version.split("(u)|(\\.)");
            String repositoryName =  "corretto/corretto-" + versionStrings[0];

            Map<String, String> tagMap = retrieveTagsForVersions(repositoryName, versionStrings[0]);

            String tmpTag = String.valueOf(tagMap.keySet().toArray()[0]);
            // For 8.322 the latest tag doesn't contain the MSI
            if (tmpTag.equals("8.322.06.2")) {
                tmpTag = "8.322.06.1";
            }
            String tag = tmpTag;

            Vendor vendor = restTemplate.getForObject("https://api.github.com/repos/" + repositoryName +"/releases/tags/" + tag, Vendor.class);

            Map<String, String> nameURLMap = vendor.getAssets().stream().collect(Collectors.toMap(Asset::getName, Asset::getBrowser_download_url));

            if (tmpTag.startsWith("8")) {
                logger.info("Body: " + vendor.getBody());
            }

            vendor.getBody().lines().filter(l -> l.contains("windows-x64.msi") || l.contains("windows-x64-jdk.msi")).forEach(l -> { // fixing this one
                String url = l.substring(l.indexOf("(https://corretto.aws/downloads/resources")+1, l.indexOf(".msi)")+4);
                String checksum = l.substring(l.indexOf("| `")+3, l.indexOf("` /<br />"));
                ChocolateyPackageInformation chocolateyPackageInformation = new ChocolateyPackageInformation();
                chocolateyPackageInformation.setUrl(url);
                chocolateyPackageInformation.setChecksum(checksum);
                chocolateyPackageInformation.setVersion(tagMap.get(tag));
                chocolateyPackageInformationList.add(chocolateyPackageInformation);
            });
        }
    }

    @Override
    void configureInstallationDirectory(List<ChocolateyPackageInformation> chocolateyPackageInformationList) {
        for (ChocolateyPackageInformation chocolateyPackageInformation : chocolateyPackageInformationList) {
            String jdkOrJre = "JDK";
            if (chocolateyPackageInformation.getUrl().toLowerCase().contains("jre")) {
                jdkOrJre = "JRE";
            }
            chocolateyPackageInformation.setDirectory("Corretto" + chocolateyPackageInformation.getMainVersion() + jdkOrJre);
        }
    }
}
