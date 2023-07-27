$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20.0.2%2B10/bellsoft-jre20.0.2%2B10-windows-amd64-full.msi'
  Checksum64 = 'cfad15f9617f7c8f25c806a90e8878f4b6353bbb'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
