$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\AdoptOpenJDK'
$url64       = 'https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_x64_windows_hotspot_12.0.1_12.zip'
$checksum64  = '415242a5dd288fa3559a729912ff79916f5c74827c7819980912285165ad2d3a'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12.0.1+12-jre 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\AdoptOpenJDK\jdk-12.0.1+12-jre\bin' -PathType 'Machine'
