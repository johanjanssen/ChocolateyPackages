$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.17%2B7/bellsoft-jdk11.0.17%2B7-windows-amd64-full.msi'
  Checksum64 = '23b11c88e9a1c94cb5961ef51170a7ce52c955be'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
