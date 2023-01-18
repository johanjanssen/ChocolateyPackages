package com.chocolatey.updater;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import java.util.ArrayList;
import java.util.List;

public abstract class UpdateService {
    private Logger logger = LoggerFactory.getLogger(UpdateService.class);

    @Autowired
    private UpdateServiceHelper updateServiceHelper;

    private final List<String> versions;

    public UpdateService(List<String> versions) {
        this.versions = versions;
    }

    public UpdateServiceHelper getUpdateServiceHelper() {
        return updateServiceHelper;
    }

    public void start() throws Exception {
        List<ChocolateyPackageInformation> chocolateyPackageInformationList = new ArrayList<>();
        retrieveChocolateyPackageInformation(chocolateyPackageInformationList);
        configureInstallationDirectory(chocolateyPackageInformationList);
        logger.info("Data used:");
        for (ChocolateyPackageInformation chocolateyPackageInformation : chocolateyPackageInformationList) {
            logger.info(chocolateyPackageInformation.toString());
        }
        updateServiceHelper.changeChocolateyConfiguration(chocolateyPackageInformationList, versions);
    }

    abstract void retrieveChocolateyPackageInformation(List<ChocolateyPackageInformation> chocolateyPackageInformationList);
    abstract void configureInstallationDirectory(List<ChocolateyPackageInformation> chocolateyPackageInformationList);
}
