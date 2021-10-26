$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\mvndaemon"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url64            = 'https://github.com/mvndaemon/mvnd/releases/download/0.7.0/mvnd-0.7.0-windows-amd64.zip'
    Checksum64       = '43d80dbf45c13bdef2cda7d3f4e94b4058c8239b75b6e251dc685de07798455b'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPath $targetDir\mvnd-0.7.0-windows-amd64\bin -PathType 'Machine'
