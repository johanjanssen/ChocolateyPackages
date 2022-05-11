$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\mvndaemon"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url64            = 'https://dist.apache.org/repos/dist/release/maven/mvnd/0.8.0/maven-mvnd-0.8.0-windows-amd64.zip'
    Checksum64       = 'eda5d83085b2ddf3c31ba849c0f72a340e9ac5f4b3f002dce060b3fad7733a84'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPath $targetDir\mvnd-0.8.0-windows-amd64\bin -PathType 'Machine'
