$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-11-openjdk-11.0.11.9-1/java-11-openjdk-11.0.11.9-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = 'deccb2a103eb8e562daaa69e9db69be76ff6c05bdab795dd8e0a53ac8be8a6fa'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
