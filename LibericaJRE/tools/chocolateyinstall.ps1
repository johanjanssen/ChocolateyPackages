$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.2.1%2B1/bellsoft-jre18.0.2.1%2B1-windows-amd64.msi'
  Checksum64 = '3f87c034e5959d7bd01dcb39f230741caee669c6'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
