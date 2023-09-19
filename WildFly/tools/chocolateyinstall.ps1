$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = $targetDir = $installDir
    Url = 'https://github.com/wildfly/wildfly/releases/download/29.0.1.Final/wildfly-29.0.1.Final.zip'
    Checksum = 'bc46b52e37980730fcb8debb5ad438ab8290a9eb'
    ChecksumType = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
