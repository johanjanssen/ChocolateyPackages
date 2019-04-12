$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\SapMachine'
$url64       = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.2/sapmachine-jdk-11.0.2_windows-x64_bin.zip'
$checksum64  = '9cd3567fa6d61d46d8f83ba637feef4fe3deca7d17e0932c7f0c59128477f1d3'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\sapmachine-11.0.2 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\SapMachine\sapmachine-11.0.2\bin' -PathType 'Machine'
