$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\WildFly'
    Url              = 'https://download.jboss.org/wildfly/17.0.1.Final/wildfly-17.0.1.Final.zip'
    Checksum         = '6d3dd603eb3e177c6e7e06c649997ec182445789'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
