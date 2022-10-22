$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.17%2B7/bellsoft-jre11.0.17%2B7-windows-amd64.msi'
  Checksum64 = 'bab5333cf8e2145d65511a370d0e1f1c698e7fdc'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
