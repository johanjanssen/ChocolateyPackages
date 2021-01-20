$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url              = 'https://download.jboss.org/wildfly/22.0.0.Final/wildfly-22.0.0.Final.zip'
    Checksum         = '7E72DCCB8F19996520869E204449960464E4A78B'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
