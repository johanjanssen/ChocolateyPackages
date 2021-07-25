$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/16.0.2+7/bellsoft-jdk16.0.2+7-windows-amd64.msi'
  Checksum64 = '87e6f54ef7d369e885f7ea70a848f4132241fc33'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
