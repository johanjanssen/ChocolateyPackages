$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\AdoptOpenJDK'
$url64       = 'https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12%2B33_openj9-0.13.0/OpenJDK12U-jdk_x64_windows_openj9_12_33_openj9-0.13.0.zip'
$checksum64  = '2e79ba9a0ad623c6c3052ff017a4f5e178e81013c281e533ae422524aea5031e  '

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12+33 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\AdoptOpenJDK\jdk-12+33\bin' -PathType 'Machine'
