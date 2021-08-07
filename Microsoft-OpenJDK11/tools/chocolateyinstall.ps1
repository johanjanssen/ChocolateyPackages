$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-11.0.12.7.1-windows-aarch64.msi'
  Checksum64 = 'fcfa2c3ba490f6b0420e94c05ad0e18ee6265a3343e9fb680f78e7399523a750'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
