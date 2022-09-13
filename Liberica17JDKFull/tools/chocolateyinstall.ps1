$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.4.1%2B1/bellsoft-jdk17.0.4.1%2B1-windows-amd64-full.msi'
  Checksum64 = 'c14226fa5546942be0f8fb01656d9e654f7ac6bf'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
