$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u252+9/bellsoft-jdk8u252+9-windows-amd64.msi'
  Checksum64 = '33E0D934BF690778ECC1794B7C1A0C307313D7B9'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
