$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = $targetDir = $installDir
    Url = 'https://github.com/wildfly/wildfly/releases/download/30.0.0.Final/wildfly-30.0.0.Final.zip'
    Checksum = '9a84c3597ac756a5d7c991b7eec37853a902961a'
    ChecksumType = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
