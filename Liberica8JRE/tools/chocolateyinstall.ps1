$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u332%2B9/bellsoft-jre8u332%2B9-windows-amd64.msi'
  Checksum64 = '7770bc75436bf60cdbd36f33e0c217563c095db2'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
