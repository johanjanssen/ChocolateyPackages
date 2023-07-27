$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.8%2B7/bellsoft-jre17.0.8%2B7-windows-amd64-full.msi'
  Checksum64 = '39472aea9d152f8449eebd776e4c3aa23fa3aeb8'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
