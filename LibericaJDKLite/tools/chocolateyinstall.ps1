$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20.0.2%2B10/bellsoft-jdk20.0.2%2B10-windows-amd64-lite.msi'
  Checksum64 = 'a3f3e0004dfc5b2823718236fe3371fcf3ef009e'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
