$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.21%2B10/bellsoft-jre11.0.21%2B10-windows-amd64.msi'
  Checksum64 = 'c2a7e5ffabecad1f6d4083592a263d78977c759f'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
