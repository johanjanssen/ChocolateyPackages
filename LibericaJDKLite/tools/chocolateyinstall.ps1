$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/13.0.2+9/bellsoft-jdk13.0.2+9-windows-amd64-lite.msi'
  Checksum64 = '41DA12E1AD3D038B2538B7D9E400C3E4A96D6DDB'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
