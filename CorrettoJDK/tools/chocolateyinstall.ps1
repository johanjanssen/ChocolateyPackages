$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\Corretto'
    Url64            = 'https://d3pxv6yz143wms.cloudfront.net/11.0.4.11.1/amazon-corretto-11.0.4.11.1-windows-x64.zip'
    Checksum64       = '707c839c3f56645454b8c8d31f255161'
    ChecksumType64   = 'md5'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk11.0.4_10 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Corretto\jdk11.0.4_10\bin' -PathType 'Machine'
