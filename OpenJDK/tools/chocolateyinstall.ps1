$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\OpenJDK'
$url64       = 'https://download.java.net/java/GA/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip'
$checksum64  = 'fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-11 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\OpenJDK\jdk-11\bin' -PathType 'Machine'
