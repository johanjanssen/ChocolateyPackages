$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.20%2B8/bellsoft-jre11.0.20%2B8-windows-amd64-full.msi'
  Checksum64 = '4d42140d1ba272667c0d148272dc6e4b74761eae'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
