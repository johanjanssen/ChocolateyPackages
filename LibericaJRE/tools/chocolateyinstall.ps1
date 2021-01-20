$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15.0.2+8/bellsoft-jre15.0.2+8-windows-amd64.msi'
  Checksum64 = '0c7c0b4b5a03d7dd3e552ae7a6b8b05c22bde66e'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
