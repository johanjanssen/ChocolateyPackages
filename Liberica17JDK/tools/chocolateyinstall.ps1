$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.9%2B11/bellsoft-jdk17.0.9%2B11-windows-amd64.msi'
  Checksum64 = '9aaacba8fa2abb0e0d01b9c743cc9e2076141513'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
