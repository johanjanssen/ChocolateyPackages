$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-14-openjdk-14.0.2.12-1/java-14-openjdk-14.0.2.12-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = '9786542af2b54af9768f7c2d2ca296b404be26bd4ec328f837757d427b2b9eb7'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
