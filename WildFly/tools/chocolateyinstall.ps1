$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\WildFly'
    Url              = 'https://download.jboss.org/wildfly/18.0.0.Final/wildfly-18.0.0.Final.zip'
    Checksum         = '28a1769ebf48faa44cbc77476fa98ceceb382d18'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
