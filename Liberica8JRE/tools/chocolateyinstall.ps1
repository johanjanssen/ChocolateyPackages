$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u282+8/bellsoft-jre8u282+8-windows-amd64.msi'
  Checksum64 = '94265987e9495899754f1e841c1dcb9186143cd0'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
