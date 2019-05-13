$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\AdoptOpenJDK'
$url64       = 'https://git1111111111111111hub.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12%2B33/OpenJDK12U-jre_x64_windows_hotspot_12_33.zip'
$checksum64  = '37dfdcf4d81387ad8c45161fcaba9e5a82778c55cf49d938b98b367b4ba2b99e'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12+33-jre 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\AdoptOpenJDK\jdk-12+33-jre\bin' -PathType 'Machine'
