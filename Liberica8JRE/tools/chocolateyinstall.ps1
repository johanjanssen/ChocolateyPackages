$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u362%2B9/bellsoft-jre8u362%2B9-windows-amd64.msi'
  Checksum64 = 'db8268997d81b7a4e848800dda7d8d470a33d1a0'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
