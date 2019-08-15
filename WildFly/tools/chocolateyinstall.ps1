$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\WildFly'
    Url              = 'https://download.jboss.org/wildfly/16.0.0.Final/wildfly-16.0.0.Final.zip'
    Checksum         = 'b55ed374ab4f8534c2343ac9a283c71fa6d22dfe'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
