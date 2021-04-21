$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u292+10/bellsoft-jdk8u292+10-windows-amd64.msi'
  Checksum64 = '76e306aafd365c6a87be5e7def10b2fc3dcff12d'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
