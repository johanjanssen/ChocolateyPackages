package com.chocolatey.updater;

public class ChocolateyPackageInformation {
    private String checksum;
    private String url;
    private String version;
    private String directory;

    public String getNuspecVersion() {
        return version.replaceAll("u", "\\.0\\.");
    }

    public String getMainVersion() {
        String[] versionStrings = version.split("(u)|(\\.)");
        return versionStrings[0];
    }

    public String getChecksum() {
        return checksum;
    }

    public void setChecksum(String checksum) {
        this.checksum = checksum;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getDirectory() {
        return directory;
    }

    public void setDirectory(String directory) {
        this.directory = directory;
    }

    @Override
    public String toString() {
        return "ChocolateyPackageInformation{" +
                "checksum='" + checksum + '\'' +
                ", url='" + url + '\'' +
                ", version='" + version + '\'' +
                ", directory='" + directory + '\'' +
                '}';
    }
}
