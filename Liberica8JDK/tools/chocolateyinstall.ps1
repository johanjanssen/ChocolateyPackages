$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u382%2B6/bellsoft-jdk8u382%2B6-windows-amd64.msi'
  Checksum64 = 'a1b56c30e62edcdf0f2c081f3bf23745e08e81d9'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
