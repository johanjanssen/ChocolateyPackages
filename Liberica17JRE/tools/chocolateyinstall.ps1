$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.4.1%2B1/bellsoft-jre17.0.4.1%2B1-windows-amd64.msi'
  Checksum64 = 'a6e9aa366aa90f680f77cfea7a5ae417546f0e77'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
