$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.3%2B7/bellsoft-jdk17.0.3%2B7-windows-amd64-full.msi'
  Checksum64 = '8f8503af4b6f49b61fe1af33212c167845a159ba'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
