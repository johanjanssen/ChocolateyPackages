$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/14+36/bellsoft-jre14+36-windows-amd64.msi'
  Checksum64 = '7E5E03985804080CAC407B4ECAB1AEBBBC30D655'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
