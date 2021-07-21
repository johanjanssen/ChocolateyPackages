$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url              = 'https://download.jboss.org/wildfly/24.0.0.Final/wildfly-24.0.0.Final.zip'
    Checksum         = '708451bb57d679f64a84010af9cbb5d19cf89c8a'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
