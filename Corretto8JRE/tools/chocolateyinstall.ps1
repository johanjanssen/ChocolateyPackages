$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\Corretto"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url64            = 'https://corretto.aws/downloads/resources/8.242.08.1/amazon-corretto-8.242.08.1-windows-x64-jre.zip'
    Checksum64       = 'b9aded040819457d04a36b726100e3f6'
    ChecksumType64   = 'md5'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jre8 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath $targetDir\jre8\bin -PathType 'Machine'
