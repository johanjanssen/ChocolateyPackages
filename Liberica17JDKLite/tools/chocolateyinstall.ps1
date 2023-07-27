$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.8%2B7/bellsoft-jdk17.0.8%2B7-windows-amd64-lite.msi'
  Checksum64 = 'a736fcfd0b147671c12f86b88162724312d3b797'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
