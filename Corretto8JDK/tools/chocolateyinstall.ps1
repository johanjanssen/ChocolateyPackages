$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\Corretto'
$url64       = 'https://d2znqt9b1bc64u.cloudfront.net/amazon-corretto-8.202.08.2-windows-x64-jdk.zip'
$checksum64  = 'b91c14d1ae32149aaccbeb3fb841a696'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk1.8.0_202 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Corretto\jdk1.8.0_202\bin' -PathType 'Machine'
