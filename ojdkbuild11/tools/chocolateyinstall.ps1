$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-11-openjdk-11.0.10.9-1/java-11-openjdk-11.0.10.9-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = 'c0f6d1fefe56147c1477b98623fd2391a9dc3b5984879a115d882ed2dcd26e48'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
