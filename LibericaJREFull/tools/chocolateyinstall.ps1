$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.1%2B12/bellsoft-jre18.0.1%2B12-windows-amd64-full.msi'
  Checksum64 = 'a1c8845162fe042b637a769ff1468f99ceef0358'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
