$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-17.0.6-windows-x64.msi'
  Checksum64 = 'ad3c2ea8b991bcb99eedff9d09962ae8d2fe8215955b5ce3f268c42cd492bcc8'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
