$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-13-openjdk-13.0.1.9-1/java-13-openjdk-13.0.1.9-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = 'e96164ee983f296b92482be5dcbd2a3d45260612f4dfb20438d1f0b62e21f8ff'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
