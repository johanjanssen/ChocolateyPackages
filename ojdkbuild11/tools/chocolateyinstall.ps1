$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-11-openjdk-11.0.8.10-1/java-11-openjdk-11.0.8.10-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = '5a88288d634407800e1609d42fd53f9e98877c95b30b7b85b5e503bf402fa119'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
