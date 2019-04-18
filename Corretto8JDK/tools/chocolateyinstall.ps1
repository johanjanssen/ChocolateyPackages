$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\Corretto'
$url64       = 'https://d3pxv6yz143wms.cloudfront.net/8.212.04.1/amazon-corretto-8.212.04.1-windows-x64-jdk.zip'
$checksum64  = 'e041513afec9ddea6976a62a19f31a0f'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk1.8.0_212 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Corretto\jdk1.8.0_212\bin' -PathType 'Machine'
