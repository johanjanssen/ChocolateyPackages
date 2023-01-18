$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19.0.2%2B9/bellsoft-jdk19.0.2%2B9-windows-amd64-full.msi'
  Checksum64 = 'bfd6d3a7ba23053120f25a7b4f90e8fb583e5936'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
