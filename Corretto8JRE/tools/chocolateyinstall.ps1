$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\Corretto'
$url64       = 'https://d2znqt9b1bc64u.cloudfront.net/amazon-corretto-8.202.08.2-windows-x64-jre.zip'
$checksum64  = '30470d1847581ed6d9c6662bcbe54a51'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jre1.8.0_202 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Corretto\jre1.8.0_202\bin' -PathType 'Machine'
