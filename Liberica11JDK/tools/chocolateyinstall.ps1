$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\Liberica'
$url64       = 'https://download.java.net/java/GA/jdk11/9/GPL/Liberica-11.0.2_windows-x64_bin.zip'
$checksum64  = '4F2109361256B33A15CD8A6E2C21BC473875C05A'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-11.0.2 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Liberica\jdk-11.0.2\bin' -PathType 'Machine'
