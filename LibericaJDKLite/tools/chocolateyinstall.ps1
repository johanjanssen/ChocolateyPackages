$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/21.0.1%2B12/bellsoft-jdk21.0.1%2B12-windows-amd64-lite.msi'
  Checksum64 = 'cf189da4513762ac605db874f1d61899904c98a7'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
