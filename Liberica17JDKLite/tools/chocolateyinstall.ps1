$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.6%2B10/bellsoft-jdk17.0.6%2B10-windows-amd64-lite.msi'
  Checksum64 = '035df64b35d8e412fe90f14515ba71475ed8cd95'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
