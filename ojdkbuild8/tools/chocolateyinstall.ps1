$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.312-1.b07/java-1.8.0-openjdk-1.8.0.312-1.b07.ojdkbuild.windows.x86_64.msi'
  Checksum64 = '599b18a5daa3441373edf7958627316f8de320891368bc8dd9df836ac3682991'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
