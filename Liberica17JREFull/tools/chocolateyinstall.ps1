$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.6%2B10/bellsoft-jre17.0.6%2B10-windows-amd64-full.msi'
  Checksum64 = 'b40ffc4e689e28d609e094c9d3cc7716276853e5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
