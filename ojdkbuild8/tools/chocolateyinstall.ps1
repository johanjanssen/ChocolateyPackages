$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.322-1.b06/java-1.8.0-openjdk-1.8.0.322-1.b06.ojdkbuild.windows.x86_64.msi'
  Checksum64 = '28555687c76ebc39a49bcdaa87c6004cf58613b34c0dda3c4dae1b2700cd8be7'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
