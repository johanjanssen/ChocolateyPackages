$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-17-openjdk-17.0.2.0.8-1/java-17-openjdk-17.0.2.0.8-1.win.x86_64.msi'
  Checksum64 = '8b45a22769446e5515921a49eed2e5505eb42086d9ae194a15cdb96648b4cc60'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
