$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url              = 'https://download.jboss.org/wildfly/24.0.1.Final/wildfly-24.0.1.Final.zip'
    Checksum         = '4a2ff36a624bbb8a856b23d7f3075372301b4916'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
