$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.272-1.b10/java-1.8.0-openjdk-1.8.0.272-1.b10.ojdkbuild.windows.x86_64.msi'
  Checksum64 = 'b339583a43fa1626dad4cbc193debeb0ceaccf7e4fa8a9a270bd0325021f4f49'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
