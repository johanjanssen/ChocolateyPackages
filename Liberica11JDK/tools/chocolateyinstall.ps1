$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.12+7/bellsoft-jdk11.0.12+7-windows-amd64.msi'
  Checksum64 = 'd4c9a6ec4a92ecc9111fbf2ac8a006bbc71c0d80'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
