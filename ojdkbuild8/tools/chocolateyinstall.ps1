$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.232-1.b09/java-1.8.0-openjdk-1.8.0.232-1.b09.ojdkbuild.windows.x86_64.msi'
  Checksum64 = '17758d84e56c4fcdd934516969aad561524fe1f2b62bed1746378953043f98d5'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
