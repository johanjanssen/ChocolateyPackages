$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.7%2B7/bellsoft-jre17.0.7%2B7-windows-amd64-full.msi'
  Checksum64 = '555b243d1becb58a37c64e016040a86228a8ce9d'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
