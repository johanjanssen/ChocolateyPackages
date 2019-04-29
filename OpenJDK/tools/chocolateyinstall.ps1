$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\OpenJDK'
$url64       = 'https://download.oracle.com/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_windows-x64_bin.zip'
$checksum64  = 'fc7d9eee3c09ea6548b00ca25dbf34a348b3942c815405a1428e0bfef268d08d'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12.0.1 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\OpenJDK\jdk-12.0.1\bin' -PathType 'Machine'
