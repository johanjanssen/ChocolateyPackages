$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url              = 'https://github.com/wildfly/wildfly/releases/download/25.0.0.Final/wildfly-25.0.0.Final.zip'
    Checksum         = 'c47afe112ff0d4d8091a2cebf509afd7fcc07235'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
