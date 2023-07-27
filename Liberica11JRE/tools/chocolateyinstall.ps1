$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.20%2B8/bellsoft-jre11.0.20%2B8-windows-amd64.msi'
  Checksum64 = 'fcb9c2be13d864fc6003987c36016acf07c0c1f5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
