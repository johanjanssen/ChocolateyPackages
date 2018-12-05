$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\AdoptOpenJDK'
$url64       = 'https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u192-b12/OpenJDK8U-jdk_x64_windows_hotspot_8u192b12.zip'
$checksum64  = '305e2346534cd71dedbacddd2956bf5001bc8c5a79503b0f23c93a1c52031361'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk8u192-b12 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\AdoptOpenJDK\jdk8u192-b12\bin' -PathType 'Machine'
