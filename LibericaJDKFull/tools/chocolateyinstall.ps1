$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/14.0.1+8/bellsoft-jdk14.0.1+8-windows-amd64-full.msi'
  Checksum64 = '0A76531529D17D726D106F1923DE56562B8CD848'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
