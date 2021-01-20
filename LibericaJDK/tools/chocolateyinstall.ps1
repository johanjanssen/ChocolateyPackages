$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15.0.2+8/bellsoft-jdk15.0.2+8-windows-amd64.msi'
  Checksum64 = 'e7367886d8e8f909e010f24a7ef10f80c9c2cdb7'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
