$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u262+10/bellsoft-jdk8u262+10-windows-amd64-full.msi'
  Checksum64 = 'b0c089c5109f0ecd786072b889defdb039cd128c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
