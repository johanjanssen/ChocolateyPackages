$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.332-1.b09/java-1.8.0-openjdk-1.8.0.332-1.b09.ojdkbuild.windows.x86_64.msi'
  Checksum64 = '84436c850a12f52c9658449d5bc16f1f6ad1c0af820d510414a45b8d8ad64357'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
