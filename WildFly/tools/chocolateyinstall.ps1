$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\WildFly'
$url         = 'https://download.jboss.org/wildfly/16.0.0.Final/wildfly-16.0.0.Final.zip'
$checksum    = 'b55ed374ab4f8534c2343ac9a283c71fa6d22dfe'

Install-ChocolateyZipPackage $packageName $url $targetDir
