# Path to the folder where the script is executing
$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $toolsDir
    Url64bit         = 'https://github.com/adoptium/jmc-build/releases/download/8.2.0/org.openjdk.jmc-8.2.0-win32.win32.x86_64.zip'
    Checksum64       = '8DF95DD0060B30A7AC455DB41C03967D1438D8A5353095B14FA81FBC9E489F3C'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
