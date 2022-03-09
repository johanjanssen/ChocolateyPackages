$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-11.0.14.9.1-windows-x64.msi'
  Checksum64 = '9932e0088af6107297affeac0560c9fe6d04de3d041b50d1c1aabe7c8006c189'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
