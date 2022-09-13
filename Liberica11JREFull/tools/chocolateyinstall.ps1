$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.16.1%2B1/bellsoft-jre11.0.16.1%2B1-windows-amd64-full.msi'
  Checksum64 = 'ca8d8b5b2a699720668e23e67f92c315e6a6e8dd'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
