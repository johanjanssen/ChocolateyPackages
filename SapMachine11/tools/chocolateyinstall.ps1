$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\SapMachine'
$url64       = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.3/sapmachine-jdk-11.0.3_windows-x64_bin.zip'
$checksum64  = 'dd1299a577fd8f61003eb20baf999a3135ba968f0620f37a477f96afc2c1fc3b'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\sapmachine-jdk-11.0.3 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\SapMachine\sapmachine-jdk-11.0.3\bin' -PathType 'Machine'
