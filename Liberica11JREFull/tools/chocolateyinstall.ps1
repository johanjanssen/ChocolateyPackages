$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.19%2B7/bellsoft-jre11.0.19%2B7-windows-amd64-full.msi'
  Checksum64 = 'f2d7f40fa995512953d3dc9c4d5b0ec4b8e6d1ac'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
