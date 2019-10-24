$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-11-openjdk-11.0.5.10-1/java-11-openjdk-11.0.5.10-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = 'b7671f3344483c61c949a28ab52e8fce7e164103465932bc9907e86267e4a66a'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
