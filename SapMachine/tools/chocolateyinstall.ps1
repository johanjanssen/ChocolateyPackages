$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\SapMachine'
$url64       = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-12/sapmachine-jdk-12-ea.33_windows-x64_bin.zip'
$checksum64  = 'a792c41dbe807d7e404b0562d69dc2f139ed37ea74f23f2d0f69bc6bff39df3a'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\sapmachine-jdk-12 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\SapMachine\sapmachine-jdk-12\bin' -PathType 'Machine'
