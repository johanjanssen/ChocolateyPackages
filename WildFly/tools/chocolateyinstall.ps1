$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\WildFly"

$packageArgs = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = $targetDir = $installDir
    Url = 'https://github.com/wildfly/wildfly/releases/download/29.0.0.Final/wildfly-29.0.0.Final.zip'
    Checksum = '4a1c642b252fe6285b5b2ae9aa0cdddd4b105105'
    ChecksumType = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
