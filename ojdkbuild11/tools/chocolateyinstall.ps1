$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-11-openjdk-11.0.4.11-1/java-11-openjdk-11.0.4.11-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = '649549812e18800cff7e57ba25ac55b454177d8affe1ff831b1f685697f3c803'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
