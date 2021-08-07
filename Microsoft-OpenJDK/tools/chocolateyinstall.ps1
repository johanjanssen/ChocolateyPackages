$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-16.0.2.7.1-windows-x64.msi'
  Checksum64 = 'ffe58c08764c1a06645e4713c6d29842886c214f4cd01afaf6667b833cf8aab5'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
