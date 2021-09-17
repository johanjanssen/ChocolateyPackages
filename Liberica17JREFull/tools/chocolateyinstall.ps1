$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/17+35/bellsoft-jre17+35-windows-amd64-full.msi'
  Checksum64 = '46b10ec6359542ddc60b59efb41dfc1c7dd08472'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
