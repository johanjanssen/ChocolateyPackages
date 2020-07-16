$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url              = 'https://download.jboss.org/wildfly/20.0.1.Final/wildfly-20.0.1.Final.zip'
    Checksum         = 'bcaba55cb2dac92264baff94b111b7ad31363bd4'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
