$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-11.0.16.1-windows-x64.msi'
  Checksum64 = '36641a07e4f87400cab46e460c71fe632df27a72a9a429e7ed855c187a9f444a'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
