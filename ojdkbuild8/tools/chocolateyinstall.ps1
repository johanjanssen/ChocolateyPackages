$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.282-1.b07.ea-x86/java-1.8.0-openjdk-1.8.0.282-1.b08.ojdkbuild.windows.x86.msi'
  Checksum64 = 'd3f835024aeaef28c5fe2ab88fc350e08a00d90c77dda5aef1f54d78799cee2b'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
