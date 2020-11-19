$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-11-openjdk-11.0.9.11-2/java-11-openjdk-11.0.9.11-2.windows.ojdkbuild.x86_64.msi'
  Checksum64 = 'f486f9037a3baa1be331c8b8493dde59e71591a591fcdb5895d83c4ecb57937f'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
