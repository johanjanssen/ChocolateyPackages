$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.9%2B11/bellsoft-jdk17.0.9%2B11-windows-amd64-lite.msi'
  Checksum64 = '79e3176819f3f51dd1f175583f294e3637b8521e'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
