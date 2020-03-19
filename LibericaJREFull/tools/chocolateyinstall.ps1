$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/14+36/bellsoft-jre14+36-windows-amd64-full.msi'
  Checksum64 = 'AB904E0018CAA7B10C7032B86522AEE6B7B6A502'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
