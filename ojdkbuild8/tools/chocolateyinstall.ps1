$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.275-1.b01/java-1.8.0-openjdk-1.8.0.275-1.b01.ojdkbuild.windows.x86_64.msi'
  Checksum64 = '9b7b8538b6c8d4c8fdbe44cf1f0b135c3d2a389507c0f6d58b2d78be60d6badb'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
