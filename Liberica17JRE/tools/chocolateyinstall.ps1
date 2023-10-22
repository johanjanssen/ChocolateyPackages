$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.9%2B11/bellsoft-jre17.0.9%2B11-windows-amd64.msi'
  Checksum64 = '21baff2f27429143773a973b3ecabb3c79cb5add'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
