$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-11-openjdk-11.0.6.10-1/java-11-openjdk-11.0.6.10-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = '97246304ede3b53c936a01535e4f31b3d127f7a7ba72a3d0f82e1a353b98b4f4'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
