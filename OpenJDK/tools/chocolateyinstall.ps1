$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\OpenJDK'
$url64       = 'https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_windows-x64_bin.zip'
$checksum64  = '289dd06e06c2cbd5e191f2d227c9338e88b6963fd0c75bceb9be48f0394ede21'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-11.0.1 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\OpenJDK\jdk-11.0.1\bin' -PathType 'Machine'
