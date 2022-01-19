$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url              = 'https://github.com/wildfly/wildfly/releases/download/26.0.0.Final/wildfly-26.0.0.Final.zip'
    Checksum         = '9b0ad3a6434750e4bf8def46aa0dbe19dd699b37'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
