$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.21%2B10/bellsoft-jdk11.0.21%2B10-windows-amd64-full.msi'
  Checksum64 = '259387906c96c19367e897db8696a998ae8d2c81'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
