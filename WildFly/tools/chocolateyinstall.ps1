$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url              = 'https://download.jboss.org/wildfly/21.0.0.Final/wildfly-21.0.0.Final.zip'
    Checksum         = '244cbde33b894004635b4c74976dc91b7b2cb0c1'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
