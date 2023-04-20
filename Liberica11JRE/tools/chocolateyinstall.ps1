$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.19%2B7/bellsoft-jre11.0.19%2B7-windows-amd64.msi'
  Checksum64 = '084006d947279aa4baf575c8ad8d1b671e91775a'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
