# Path to the folder where the script is executing
$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $toolsDir
    Url64bit         = 'http://download.bell-sw.com/lmc/bellsoft-lmc7.0-windows-amd64.zip'
    Checksum64       = 'e3694968827effbce19958747e3b69e08a1dda2a'
    ChecksumType64   = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
