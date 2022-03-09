$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = $targetDir = $installDir
    Url = 'https://github.com/wildfly/wildfly/releases/download/26.0.1.Final/wildfly-26.0.1.Final.zip'
    Checksum = '1f6676a7372256d5e2e80e5372b611a0e089a728'
    ChecksumType = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
