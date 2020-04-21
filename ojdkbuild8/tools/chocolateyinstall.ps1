$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.252-1.b09/java-1.8.0-openjdk-1.8.0.252-1.b09.ojdkbuild.windows.x86_64.msi'
  Checksum64 = 'a3643ab85c1a2f6db1501b8216f6e944236781bafb7e8943eb621e06f42d50ad'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
