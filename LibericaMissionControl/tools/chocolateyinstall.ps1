# Path to the folder where the script is executing
$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $toolsDir
    Url64bit         = 'http://download.bell-sw.com/lmc/bellsoft-lmc7.1.1-windows-amd64.zip'
    Checksum64       = '6B39C56B6702EB6510D4FD2D9795C92FBD861D7C'
    ChecksumType64   = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
