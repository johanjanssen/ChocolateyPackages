$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.9+11/bellsoft-jdk11.0.9+11-windows-amd64.msi'
  Checksum64 = '5f090f1ef39fea72a23bbdb752b0a5f247cdacfd'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
