$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20.0.2%2B10/bellsoft-jre20.0.2%2B10-windows-amd64.msi'
  Checksum64 = '3de01f8789ca72867e9918f777a05c0d89e4e58e'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
