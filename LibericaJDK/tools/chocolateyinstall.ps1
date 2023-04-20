$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20.0.1%2B10/bellsoft-jdk20.0.1%2B10-windows-amd64.msi'
  Checksum64 = '08e0fbda6fb96937923fe90e3150f30628027e18'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
