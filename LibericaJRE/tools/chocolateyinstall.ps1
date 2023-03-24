$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20%2B37/bellsoft-jre20%2B37-windows-amd64.msi'
  Checksum64 = '00958e0363bbf661c685153980c5d18b51716ba3'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
