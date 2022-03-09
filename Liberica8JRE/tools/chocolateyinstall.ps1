$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u322%2B6/bellsoft-jre8u322%2B6-windows-amd64.msi'
  Checksum64 = '8db63ed7efa606038882866bdd02228db93b1c7d'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
