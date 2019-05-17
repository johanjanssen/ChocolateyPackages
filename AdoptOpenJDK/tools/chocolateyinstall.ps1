$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\AdoptOpenJDK'
$url64       = 'https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_x64_windows_hotspot_12.0.1_12.zip'
$checksum64  = '2f8d6cfab85c62b607624778a2f63407dbefc8d3ea43e488cfb7c3b5a04a33c0'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12.0.1+12 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\AdoptOpenJDK\jdk-12.0.1+12\bin' -PathType 'Machine'
