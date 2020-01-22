$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.242-1.b08/java-1.8.0-openjdk-1.8.0.242-1.b08.ojdkbuild.windows.x86_64.msi'
  Checksum64 = 'd18fccda15413ee8934cfe17aa7b7d81bf5765e4076763707a6530b9a5a1685d'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
