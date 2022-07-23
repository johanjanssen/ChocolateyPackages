$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u342%2B7/bellsoft-jre8u342%2B7-windows-amd64.msi'
  Checksum64 = 'df19654fefc1df5658bb6474982a2b34ab27f73c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
