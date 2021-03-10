$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\mvndaemon"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url64            = 'https://github.com/mvndaemon/mvnd/releases/download/0.4.2/mvnd-0.4.2-windows-amd64.zip'
    Checksum64       = '9539bdec3350038fbd9581a457e92c8376838f52e80fd15e3f60d1564b0b3c39'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPath $targetDir\mvnd-0.4.2-windows-amd64\bin -PathType 'Machine'
