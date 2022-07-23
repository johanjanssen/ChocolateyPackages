$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.2%2B10/bellsoft-jre18.0.2%2B10-windows-amd64.msi'
  Checksum64 = '7cc4fb885bcfa5280878f09675199565a2cf3295'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
