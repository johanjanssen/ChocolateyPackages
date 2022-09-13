$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u345%2B1/bellsoft-jre8u345%2B1-windows-amd64.msi'
  Checksum64 = 'a755d6d2e99cd5ecb405e354633a6af6809044a9'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
