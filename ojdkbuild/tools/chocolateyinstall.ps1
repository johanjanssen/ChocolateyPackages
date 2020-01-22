$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-13-openjdk-13.0.2.8-1/java-13-openjdk-13.0.2.8-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = 'a5de12f580df247963ba535469fcb86d84a1a1a68c1d89c0c7d9e4944a75ac78'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
