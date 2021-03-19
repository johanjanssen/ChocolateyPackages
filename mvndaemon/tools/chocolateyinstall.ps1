$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\mvndaemon"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url64            = 'https://github.com/mvndaemon/mvnd/releases/download/0.4.3/mvnd-0.4.3-windows-amd64.zip'
    Checksum64       = '43e5cffe5653f82fcaf63c9d2fb7cdedab63d84a87bc0b0f63fb6bd1dd4c1b5d'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPath $targetDir\mvnd-0.4.3-windows-amd64\bin -PathType 'Machine'
