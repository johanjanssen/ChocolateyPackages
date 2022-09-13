$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u345%2B1/bellsoft-jdk8u345%2B1-windows-amd64.msi'
  Checksum64 = 'bb595852d85c0ad650a6a4e26f8ba34ca1cef07a'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
