$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\Corretto'
$url64       = 'https://d3pxv6yz143wms.cloudfront.net/8.212.04.1/amazon-corretto-8.212.04.1-windows-x64-jre.zip'
$checksum64  = '6e88a5521d9d9acbde646f99c3d95cc0'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jre8 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Corretto\jre8\bin' -PathType 'Machine'
