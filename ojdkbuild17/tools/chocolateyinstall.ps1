$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-17-openjdk-17.0.1.0.12-1/java-17-openjdk-17.0.1.0.12-1.win.x86_64.msi'
  Checksum64 = '20c2e50b615a19a670d0e069816c0ecc616d6f8924f44a67b6d0cf7447f2c432'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
