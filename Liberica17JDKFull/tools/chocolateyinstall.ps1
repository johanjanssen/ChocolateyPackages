$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.7%2B7/bellsoft-jdk17.0.7%2B7-windows-amd64-full.msi'
  Checksum64 = '1d0fad95200a1e11e25ae92c8e78ac9e40a0f19a'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
