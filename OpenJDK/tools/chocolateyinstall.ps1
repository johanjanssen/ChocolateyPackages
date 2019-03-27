$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\OpenJDK'
$url64       = 'https://download.java.net/java/GA/jdk12/GPL/openjdk-12_windows-x64_bin.zip'
$checksum64  = '35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\OpenJDK\jdk-12\bin' -PathType 'Machine'
