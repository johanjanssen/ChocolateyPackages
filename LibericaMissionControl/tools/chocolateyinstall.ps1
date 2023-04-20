# Path to the folder where the script is executing
$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $toolsDir
    Url64bit         = 'https://download.bell-sw.com/lmc/8.2.1/bellsoft-lmc8.2.1-windows-amd64.zip'
    Checksum64       = 'b0f2b2329037056019e3225396b6ce9106a9fe5d'
    ChecksumType64   = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
