# Path to the folder where the script is executing
$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $toolsDir
    Url64bit         = 'https://download.java.net/java/GA/jmc8/05/binaries/jmc-8.3.1_windows-x64.zip'
    Checksum64       = 'd924640fefbde15a30481141e94285f38e1183c01953d1d568ea3de248254b9d'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
