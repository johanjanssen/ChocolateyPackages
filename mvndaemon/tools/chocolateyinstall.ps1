$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\mvndaemon"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url64            = 'https://github.com/mvndaemon/mvnd/releases/download/0.5.2/mvnd-0.5.2-windows-amd64.zip'
    Checksum64       = '278d92b6c1ca3b96697f34cf9e2a143b0361695625756a0cd62f21da23850d69'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPath $targetDir\mvnd-0.5.2-windows-amd64\bin -PathType 'Machine'
