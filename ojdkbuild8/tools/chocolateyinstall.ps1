$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.302-1.b08/java-1.8.0-openjdk-1.8.0.302-1.b08.ojdkbuild.windows.x86_64.msi'
  Checksum64 = '179b86c66373483922a4f4edeb88df4b7290361450c4e068c76df8c44a3b0889'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
