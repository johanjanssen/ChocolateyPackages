$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u282+8/bellsoft-jdk8u282+8-windows-amd64.msi'
  Checksum64 = '2d8387a1982c691c6c569627428060f4a23ae23b'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
