$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-windows-amd64-full.msi'
  Checksum64 = 'fd5ac1f960b7e3314da8fbc67cbb1adbfa1d1695'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
