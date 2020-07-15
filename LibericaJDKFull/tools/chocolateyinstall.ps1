$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/14.0.2+13/bellsoft-jdk14.0.2+13-windows-amd64-full.msi'
  Checksum64 = '541996b4a73fd62956836409f67f57a4763c2308'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
