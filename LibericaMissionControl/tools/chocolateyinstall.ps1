# Path to the folder where the script is executing
$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $toolsDir
    Url64bit         = 'http://download.bell-sw.com/lmc/bellsoft-lmc7.1-windows-amd64.zip'
    Checksum64       = 'EFDB60217441C7F164830A8E237E7D6AF7FB978F'
    ChecksumType64   = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
