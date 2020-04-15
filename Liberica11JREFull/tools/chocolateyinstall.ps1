$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.7+10/bellsoft-jre11.0.7+10-windows-amd64-full.msi'
  Checksum64 = '95CAE857702A26C2BC48372C2C4B6C94E3B05532'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
