$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.16%2B8/bellsoft-jre11.0.16%2B8-windows-amd64.msi'
  Checksum64 = '241508847ba8a6cb5c8fa2c13e6ef2927af819f7'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
