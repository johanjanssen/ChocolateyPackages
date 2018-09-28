$packageName = $env:ChocolateyPackageName
$targetDir   = 'C:\Program Files\WildFly'
$url         = 'http://download.jboss.org/wildfly/14.0.1.Final/wildfly-14.0.1.Final.zip'
$checksum    = 'a6bafc5c8c6c148648d9229c2066f041f8dc656c'

Install-ChocolateyZipPackage $packageName $url $targetDir
