$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-11.0.10.9-windows-x64.msi'
  Checksum64 = '4f9f6c9cd1cc9f1d6d893e59dd74ffc7711892cade528937cd3acb12e2b2dc5b'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
