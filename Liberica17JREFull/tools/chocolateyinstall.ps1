$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.5%2B8/bellsoft-jre17.0.5%2B8-windows-amd64-full.msi'
  Checksum64 = '7e32a03d385354baf2577b5ff22c7b8da76ec642'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
