$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url              = 'https://download.jboss.org/wildfly/23.0.0.Final/wildfly-23.0.0.Final.zip'
    Checksum         = '83e165f34eb85d593117aa51bb4a24ceb6ce8a53'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
