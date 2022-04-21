$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = $targetDir = $installDir
    Url = 'https://github.com/wildfly/wildfly/releases/download/26.1.0.Final/wildfly-26.1.0.Final.zip'
    Checksum = 'ceadb5a46024c2d2ac947c453adf0498c4a141c6'
    ChecksumType = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
