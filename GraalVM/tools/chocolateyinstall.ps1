$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\GraalVM'
$url64       = 'https://github.com/oracle/graal/releases/download/vm-19.1.0/graalvm-ce-windows-amd64-19.1.0.zip'
$checksum64  = '54D71BC3D43F7F05D1736547FD24ADD42A6199C5790413A948974E558739B0AA'

Install-ChocolateyZipPackage $packageName $url64 $targetDir
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\graalvm-ce-19.1.0 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\GraalVM\graalvm-ce-19.1.0\bin' -PathType 'Machine'
