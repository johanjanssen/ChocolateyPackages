$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\mvndaemon"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url64            = 'https://github.com/mvndaemon/mvnd/releases/download/0.7.1/mvnd-0.7.1-windows-amd64.zip'
    Checksum64       = '749f647df21977e7ab8f1296ae39dedf1067aaaf173eddfb685b73e01d8352ff'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPath $targetDir\mvnd-0.7.1-windows-amd64\bin -PathType 'Machine'
