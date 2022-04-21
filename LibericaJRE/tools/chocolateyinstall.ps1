$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.1%2B12/bellsoft-jre18.0.1%2B12-windows-amd64.msi'
  Checksum64 = '9b23aea84b5c412e17dcc1b4875ee9c9ff638084'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
