$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.3%2B7/bellsoft-jdk17.0.3%2B7-windows-amd64.msi'
  Checksum64 = 'c894954382e26661bbd2ad5e91368c1746640c70'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
