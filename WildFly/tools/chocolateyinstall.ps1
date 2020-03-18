$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url              = 'https://download.jboss.org/wildfly/18.0.1.Final/wildfly-18.0.1.Final.zip'
    Checksum         = '4e2e8335800516923792befaffb3657c0a295c93'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
