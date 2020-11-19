$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.275-1.b01/java-1.8.0-openjdk-1.8.0.275-1.b01.ojdkbuild.windows.x86_64.msi'
  Checksum64 = 'efc67ebadaabca65ac89e60697be833b9ff71d6f7df5e3d1b354f2458d76b6d7'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
