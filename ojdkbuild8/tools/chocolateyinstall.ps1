$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.282-1.b08/java-1.8.0-openjdk-1.8.0.282-1.b08.ojdkbuild.windows.x86_64.msi'
  Checksum64 = '58b5d4488f5038be791885891a2b1230a227c74bc9aa6e043cd3880427b7bbf9'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
