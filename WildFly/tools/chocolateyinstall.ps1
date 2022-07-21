$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = $targetDir = $installDir
    Url = 'https://github.com/wildfly/wildfly/releases/download/26.1.1.Final/wildfly-26.1.1.Final.zip'
    Checksum = '8c76263c93ee4fa96cde1d7acca68b57a99b1df0'
    ChecksumType = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
