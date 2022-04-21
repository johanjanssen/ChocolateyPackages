$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.15%2B10/bellsoft-jre11.0.15%2B10-windows-amd64.msi'
  Checksum64 = 'ff94c3d13d147b90e2c4dc4e5107240d8ea91a72'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
