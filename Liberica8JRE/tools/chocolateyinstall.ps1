$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u312+7/bellsoft-jre8u312+7-windows-amd64.msi'
  Checksum64 = '076b0d0fe57d166ba626de70a8d5991e74a0c064'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
