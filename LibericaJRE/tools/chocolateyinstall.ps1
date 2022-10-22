$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19.0.1%2B11/bellsoft-jre19.0.1%2B11-windows-amd64.msi'
  Checksum64 = '04cbed9d6ce8ca22db4aeba89bdbf6032d9096d0'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
