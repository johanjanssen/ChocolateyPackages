$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19.0.2%2B9/bellsoft-jre19.0.2%2B9-windows-amd64.msi'
  Checksum64 = '4e637975518e115c5f17b9d2417df65df09cdae3'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
