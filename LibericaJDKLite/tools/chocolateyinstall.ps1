$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-windows-amd64-lite.msi'
  Checksum64 = '11fb9f00116f16bc85f5554266e077f8c2d0b25e'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
