# Path to the folder where the script is executing
$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $toolsDir
    Url64bit         = 'https://github.com/AdoptOpenJDK/openjdk-jmc-overrides/releases/download/8.1.0/org.openjdk.jmc-8.1.0-win32.win32.x86_64.zip'
    Checksum64       = 'A9C433DF56BDE62FF491D572151B280A5ABDACB1FF4A7B89CB0C14834C39EB50'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
