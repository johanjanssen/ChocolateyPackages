$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/14.0.1+8/bellsoft-jdk14.0.1+8-windows-amd64-lite.msi'
  Checksum64 = '519DAEAF2AA131CCFF75D746CCEC9818538A2C86'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
