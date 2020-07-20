$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.262-1.b10/java-1.8.0-openjdk-1.8.0.262-1.b10.ojdkbuild.windows.x86_64.msi'
  Checksum64 = '8d012d3e75adac829c8e1f151cd34520a05d66cec8871f195c76873e40ecbc63'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
