$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.7%2B7/bellsoft-jdk17.0.7%2B7-windows-amd64-lite.msi'
  Checksum64 = '68e2497b8187d2c90fc09b073702bc1509072fc9'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
