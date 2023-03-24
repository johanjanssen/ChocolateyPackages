$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20%2B37/bellsoft-jdk20%2B37-windows-amd64.msi'
  Checksum64 = '7dd4bcc294117f833b2bcbbcea3236bfec4b61e5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
