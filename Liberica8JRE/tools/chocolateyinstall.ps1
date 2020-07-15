$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u262+10/bellsoft-jre8u262+10-windows-amd64.msi'
  Checksum64 = '71b865019d570e61a5a635449dbe17231f64e63e'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
