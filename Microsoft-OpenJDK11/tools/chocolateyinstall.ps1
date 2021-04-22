$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-11.0.11.9.1-windows-x64.msi'
  Checksum64 = 'cfbcd0a8c8e983b0ddd94d49476c25cc0b47f7d2289f3fd554cc0a95e5cfe6dd'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
