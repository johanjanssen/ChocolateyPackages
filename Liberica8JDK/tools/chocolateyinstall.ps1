$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u262+10/bellsoft-jdk8u262+10-windows-amd64.msi'
  Checksum64 = 'ca829d2f98361f8b6ff2b8cf7b0558f554fa50bb'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
