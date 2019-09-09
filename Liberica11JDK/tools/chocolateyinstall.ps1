$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\Liberica'
    Url64            = 'https://download.bell-sw.com/java/11.0.4/bellsoft-jdk11.0.4-windows-amd64.zip'
    Checksum64       = '6F50B5E2C8EEDC24ECA0C598265D9B6310A9463A'
    ChecksumType64   = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-11.0.4 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Liberica\jdk-11.0.4\bin' -PathType 'Machine'
