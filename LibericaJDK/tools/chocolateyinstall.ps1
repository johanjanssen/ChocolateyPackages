$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.2%2B9/bellsoft-jdk17.0.2%2B9-windows-amd64.msi'
  Checksum64 = '1d28ddf9d9f9d6365b29d86ba1328cccfd85581d'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
