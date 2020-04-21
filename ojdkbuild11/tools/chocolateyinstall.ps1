$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-11-openjdk-11.0.7.10-1/java-11-openjdk-11.0.7.10-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = '5950f7ae0974b8afcfac31f40c188af3f34b83b5ec382295559457aa5f61b2ff'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
