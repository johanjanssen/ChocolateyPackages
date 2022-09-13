$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.16%2B8/bellsoft-jdk11.0.16%2B8-windows-amd64.msi'
  Checksum64 = '376378b557980183b2fd02e5b3c3a5894f3fa970'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
