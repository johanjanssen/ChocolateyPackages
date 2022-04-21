$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.15%2B10/bellsoft-jdk11.0.15%2B10-windows-amd64.msi'
  Checksum64 = '5b808a6372480a47e8ebc8e75e9679e0ab393566'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
