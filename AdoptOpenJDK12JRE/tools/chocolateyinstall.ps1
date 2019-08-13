$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\AdoptOpenJDK'
$url64       = 'https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.2%2B10/OpenJDK12U-jre_x64_windows_hotspot_12.0.2_10.zip'
$checksum64  = 'c03fdbced77d74557d2ede7a120b09e2573dde7527a4c019458b6f20920aa632'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12.0.2+10-jre 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\AdoptOpenJDK\jdk-12.0.2+10-jre\bin' -PathType 'Machine'
