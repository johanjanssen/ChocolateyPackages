$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.292-1.b10/java-1.8.0-openjdk-1.8.0.292-1.b10.ojdkbuild.windows.x86_64.msi'
  Checksum64 = '19c3151e1952e86d6f7282cb674ef303e36e29db2e03fc2e684fd6dd81bc2ec1'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
