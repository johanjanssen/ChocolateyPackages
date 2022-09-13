$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = $targetDir = $installDir
    Url = 'https://github.com/wildfly/wildfly/releases/download/26.1.2.Final/wildfly-26.1.2.Final.zip'
    Checksum = '5483d5f2ed36c71469619b264094d11259b95cab'
    ChecksumType = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
