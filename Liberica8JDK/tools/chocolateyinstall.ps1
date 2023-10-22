$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u392%2B9/bellsoft-jdk8u392%2B9-windows-amd64.msi'
  Checksum64 = '6b12d4525e3c5f2a154fce9b3b53b6d49f1fd7d9'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
