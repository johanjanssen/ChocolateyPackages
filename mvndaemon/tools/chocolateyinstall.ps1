$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\mvndaemon"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url64            = 'https://github.com/apache/maven-mvnd/releases/download/0.8.2/maven-mvnd-0.8.2-windows-amd64.zip'
    Checksum64       = 'bfe6115b643ecb54b52a46df9e5b790035e54e67e21c10f964c7d58f633b7f22'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPath $targetDir\maven-mvnd-0.8.2-windows-amd64\bin -PathType 'Machine'
