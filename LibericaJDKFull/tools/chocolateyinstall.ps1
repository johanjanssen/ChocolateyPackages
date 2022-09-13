$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.2.1%2B1/bellsoft-jdk18.0.2.1%2B1-windows-amd64-full.msi'
  Checksum64 = 'c968cac0cc3a20b3ee65c937eb62df7888905f10'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
