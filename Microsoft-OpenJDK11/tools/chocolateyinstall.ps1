$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-11.0.20-windows-x64.msi'
  Checksum64 = 'f0a0e4d5255e7844faa0ae508e7410c0d6bc1d9c0b596f62ff1224e81af341f2'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
