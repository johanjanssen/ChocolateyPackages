package com.chocolatey.updater;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Profile;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

// Tags Sapmachine no 8, sapmachine-11.0.14, sapmachine-17.0.2
// Versions: java.versions=8u322,11.0.14,17.0.2
@Service
@Profile("graalvm")
public class GraalVMUpdateService extends UpdateService {
    Logger logger = LoggerFactory.getLogger(GraalVMUpdateService.class);

    @Value("${graalvm.version}")
    String version;

    Map<String, String> retrieveTagsForVersions(String repositoryName) {
        ResponseEntity<List<Release>> releases = updateServiceHelper.retrieveReleasesFromAPI(repositoryName);

        Map<String, String> tagMap = new HashMap<>();

        for (Release release : releases.getBody()) {
            if (release.getTag_name().equals("vm-" + version)) {
                tagMap.put(release.getTag_name(), version);
            }
        }

        updateServiceHelper.tagLoggingAndVerification(tagMap, this.getClass().getName());
        return tagMap;
    }

    @Override
    void retrieveChocolateyPackageInformation(List<ChocolateyPackageInformation> chocolateyPackageInformationList) {
        RestTemplate restTemplate = new RestTemplate();

        String repositoryName = "graalvm/graalvm-ce-builds";

        Map<String, String> tagMap = retrieveTagsForVersions(repositoryName);

        for (String tag : tagMap.keySet()) {
            Vendor vendor = restTemplate.getForObject("https://api.github.com/repos/" + repositoryName + "/releases/tags/" + tag, Vendor.class);

            Map<String, String> nameURLMap = vendor.getAssets().stream().collect(Collectors.toMap(Asset::getName, Asset::getBrowser_download_url));

            logger.info("Used assets:");
            for (Asset asset : vendor.getAssets()) {
                if (asset.getBrowser_download_url().endsWith(".msi")) { //difference
                    logger.info("MSI found " + asset.getBrowser_download_url());
                    ChocolateyPackageInformation chocolateyPackageInformation = new ChocolateyPackageInformation();
                    chocolateyPackageInformation.setUrl(asset.getBrowser_download_url());
                    chocolateyPackageInformation.setVersion(tagMap.get(tag));

                    byte[] msiFile = restTemplate.getForObject(URI.create(asset.getBrowser_download_url()), byte[].class);

                    MessageDigest digest = null;
                    try {
                        digest = MessageDigest.getInstance("SHA-256");
                    } catch (NoSuchAlgorithmException e) {
                        e.printStackTrace();
                    }
                    byte[] encodedhash = digest.digest(msiFile);
                    String sha256 = updateServiceHelper.bytesToHex(encodedhash);
                    chocolateyPackageInformation.setChecksum(sha256);

                    chocolateyPackageInformationList.add(chocolateyPackageInformation);
                }
            }
        }
    }

    @Override
    void configureInstallationDirectory(List<ChocolateyPackageInformation> chocolateyPackageInformationList) {
        for (ChocolateyPackageInformation chocolateyPackageInformation : chocolateyPackageInformationList) {
            String filename = chocolateyPackageInformation.getUrl().substring(chocolateyPackageInformation.getUrl().lastIndexOf("/"));
            String jdkOrJre = ""; // SapMachine has no JDK in the directory name
            if (filename.toLowerCase().contains("jre")) {
                jdkOrJre = "JRE";
            }

            chocolateyPackageInformation.setDirectory("GraalVM" + chocolateyPackageInformation.getMainVersion() + jdkOrJre);
        }
    }
}
