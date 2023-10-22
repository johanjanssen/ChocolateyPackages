$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/21.0.1%2B12/bellsoft-jdk21.0.1%2B12-windows-amd64-full.msi'
  Checksum64 = '4cde63ee74b9a54d34c390823bf6a7ac295eab27'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
