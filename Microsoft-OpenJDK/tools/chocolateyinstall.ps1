$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-16.0.2.7.1-windows-aarch64.msi'
  Checksum64 = 'c59de21aacaa6e9fb928fe1ff5e4f4adb1f2852ad1e49513d4a50ce21ce607d9'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
