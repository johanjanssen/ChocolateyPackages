$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.4%2B8/bellsoft-jdk17.0.4%2B8-windows-amd64-full.msi'
  Checksum64 = '0ec3c26b2aaed62e83991b481cd10c52c8c6f2a1'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
