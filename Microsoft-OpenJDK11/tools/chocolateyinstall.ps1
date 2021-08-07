$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-11.0.12.7.1-windows-x64.msi'
  Checksum64 = 'ea703299bde8b840a291c86b597e7af74f29ba5976082b0a7d16dc1d36668ce7'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
