$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/21.0.1%2B12/bellsoft-jdk21.0.1%2B12-windows-amd64.msi'
  Checksum64 = '3ef92759bc21bb25c66ae53a78653f8be6998531'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
