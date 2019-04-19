$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\SapMachine'
$url64       = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-12.0.1/sapmachine-jdk-12.0.1_windows-x64_bin.zip'
$checksum64  = '94be7be2a9c201f8ea4718be168b461b6c01043b48801ff67cf32c801a32b5e5'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\sapmachine-jdk-12.0.1 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\SapMachine\sapmachine-jdk-12.0.1\bin' -PathType 'Machine'
