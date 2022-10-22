$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.5%2B8/bellsoft-jre17.0.5%2B8-windows-amd64.msi'
  Checksum64 = '2c0b622b2502aa19ceebdbe74a09405c9c3d83d2'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
