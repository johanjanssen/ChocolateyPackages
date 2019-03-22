$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\AdoptOpenJDK'
$url64       = 'https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12%2B33_openj9-0.13.0/OpenJDK12U-jre_x64_windows_openj9_12_33_openj9-0.13.0.zip'
$checksum64  = 'ef85ab503b124360a0d2d9be45a041a3d7cc42fda010303f38db94ab8ffe4fb8    '

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12+33-jre 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\AdoptOpenJDK\jdk-12+33-jre\bin' -PathType 'Machine'
