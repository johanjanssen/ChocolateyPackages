$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = $targetDir = $installDir
    Url = 'https://github.com/wildfly/wildfly/releases/download/27.0.1.Final/wildfly-27.0.1.Final.zip'
    Checksum = '9f3047d9a5560b4e07ba848f977a08ad59e74608'
    ChecksumType = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
