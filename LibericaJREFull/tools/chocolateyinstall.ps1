$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15.0.2+8/bellsoft-jre15.0.2+8-windows-amd64-full.msi'
  Checksum64 = '9fba223e46e42407c33484e4f5aa5873f1a7e1ac'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
