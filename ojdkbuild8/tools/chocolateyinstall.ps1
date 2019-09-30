$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.222-2.b10/java-1.8.0-openjdk-1.8.0.222-2.b10.ojdkbuild.windows.x86_64.msi'
  Checksum64 = 'cb4a5f358552b3ee946312df191dac566b24c4b72ef1d0ba757248f7a6ca3cc5'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
