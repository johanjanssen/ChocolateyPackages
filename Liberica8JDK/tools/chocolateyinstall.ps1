$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u352%2B8/bellsoft-jdk8u352%2B8-windows-amd64.msi'
  Checksum64 = '9c9006b58379b37c843cfe9ff87c07d27a59b171'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
