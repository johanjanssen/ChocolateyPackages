$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url              = 'https://download.jboss.org/wildfly/23.0.1.Final/wildfly-23.0.1.Final.zip'
    Checksum         = '1da1ecc739fea993c450f09e74786ce87a8c4d0e'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
