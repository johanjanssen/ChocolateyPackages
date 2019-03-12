$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\Corretto'
$url64       = 'https://d2jnoze5tfhthg.cloudfront.net/amazon-corretto-11.0.2.9.1-windows-x64.zip'
$checksum64  = 'dea71a3c6934976cb2cbad6bc3df6a7f'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk11.0.2_9 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Corretto\jdk11.0.2_9\bin' -PathType 'Machine'
