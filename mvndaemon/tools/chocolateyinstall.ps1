$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\mvndaemon"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url64            = 'https://github.com/apache/maven-mvnd/releases/download/0.9.0/maven-mvnd-0.9.0-windows-amd64.zip'
    Checksum64       = '07205DA7F84DB53FDFFC55079B817789267B661F39978A2B2AD4F2584DC812BA'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPath $targetDir\maven-mvnd-0.9.0-windows-amd64\bin -PathType 'Machine'
