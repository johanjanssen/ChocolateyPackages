$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.4%2B8/bellsoft-jdk17.0.4%2B8-windows-amd64.msi'
  Checksum64 = 'd0b69e3b16a67e2c88c32b7e6f7553e9ad693656'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
