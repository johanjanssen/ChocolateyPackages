$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/8u242+7/bellsoft-jre8u242+7-windows-amd64.msi'
  Checksum64 = '1A183D6F069107DF159441159FD24F16295A4072'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
