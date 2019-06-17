$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\GraalVM'
$url64       = 'https://github.com/oracle/graal/releases/download/vm-19.0.2/graalvm-ce-windows-amd64-19.0.2.zip'
$checksum64  = 'F8550B6B11FAC991069DFCE63CE1CD20D0A0C044C8EF9348ACC560DDFF37807E'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\graalvm-ce-19.0.2 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\GraalVM\graalvm-ce-19.0.2\bin' -PathType 'Machine'
