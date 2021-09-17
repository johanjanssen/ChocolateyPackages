$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/17+35/bellsoft-jdk17+35-windows-amd64.msi'
  Checksum64 = '9a124d9fa1c40a09fea57d8f7b080021d04102a5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
