$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u282+8/bellsoft-jre8u282+8-windows-amd64.msi'
  Checksum64 = '67984214cb2f96265d1fd1b0d4802a844ea3689a'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
