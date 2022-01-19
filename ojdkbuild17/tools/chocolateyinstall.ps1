$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-17-openjdk-17.0.1.0.12-1/java-17-openjdk-17.0.1.0.12-1.win.x86_64.msi'
  Checksum64 = '58013158d4b8f8906feb5875a861f910fcc41236acde8d94f899f26581151b7e'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
