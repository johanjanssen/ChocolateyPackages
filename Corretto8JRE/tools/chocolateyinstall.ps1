$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\Corretto'
    Url64            = 'https://d3pxv6yz143wms.cloudfront.net/8.222.10.1/amazon-corretto-8.222.10.3-windows-x64-jre.zip'
    Checksum64       = '6903e6c0c13204d35ed70430ed568777'
    ChecksumType64   = 'md5'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jre8 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Corretto\jre8\bin' -PathType 'Machine'
