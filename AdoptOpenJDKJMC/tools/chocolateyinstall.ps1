# Path to the folder where the script is executing
$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $toolsDir
    Url64bit         = 'https://github.com/AdoptOpenJDK/openjdk-jmc-overrides/releases/download/8.0.0/org.openjdk.jmc-8.0.0-win32.win32.x86_64.zip'
    Checksum64       = 'D273BEFE4321E007989DA46D6B311B9EF31723BA92701AC4128133D460410894'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
