$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/17.0.1+12/bellsoft-jdk17.0.1+12-windows-amd64.msi'
  Checksum64 = '8a3d6d1d201564d5f0c1d91eddd370a082b3bb5c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
