# Path to the folder where the script is executing
$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $toolsDir
    Url64bit         = 'https://download.java.net/java/GA/jmc8/13/binaries/jmc-8.0.0_windows-x64.zip'
    Checksum64       = '866e3799162f90c230abdd1d0aa9ba82180603904dc6eea03b588732852241d8'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
