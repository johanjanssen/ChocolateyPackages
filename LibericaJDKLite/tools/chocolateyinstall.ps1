$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-windows-amd64-lite.msi'
  Checksum64 = 'cf7834f4b589a77770973b1d8b00e73a741fda3b'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
