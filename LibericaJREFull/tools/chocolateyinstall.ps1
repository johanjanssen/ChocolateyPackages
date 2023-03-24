$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20%2B37/bellsoft-jre20%2B37-windows-amd64-full.msi'
  Checksum64 = '9cfed08d28bb571cee7d73b789fa4994e620a7e4'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
