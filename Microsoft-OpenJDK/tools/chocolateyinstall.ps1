$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-17.0.2.8.1-windows-x64.msi'
  Checksum64 = '413c0354cb2f231405c8d2be48847a4499050c15a7f01c3c1f42c6d84f059ee8'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
