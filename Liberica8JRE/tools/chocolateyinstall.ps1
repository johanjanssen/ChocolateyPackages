$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u382%2B6/bellsoft-jre8u382%2B6-windows-amd64.msi'
  Checksum64 = '85910429dabe1dd1913a0ed610518fa3223b025e'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
