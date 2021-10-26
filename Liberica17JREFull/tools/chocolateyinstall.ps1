$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/17.0.1+12/bellsoft-jre17.0.1+12-windows-amd64-full.msi'
  Checksum64 = '838eeb9945f8dce653f1eb9b35fffdf99c59bc93'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
