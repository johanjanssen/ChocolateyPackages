$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-17.35.1-windows-x64.msi'
  Checksum64 = '2a13985ca01537e91258aa5a5ff06ef0998aa248a1e5526a5abce51cc3168c49'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
