$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\Liberica'
$url64       = 'https://github.com/bell-sw/Liberica/releases/download/12/bellsoft-jdk12-windows-amd64.zip'
$checksum64  = 'e287b7ddf6482666dc963952d6207f72d5d5dab4'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Liberica\jdk-12\bin' -PathType 'Machine'
