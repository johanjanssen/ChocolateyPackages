$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.4%2B8/bellsoft-jre17.0.4%2B8-windows-amd64-full.msi'
  Checksum64 = 'c959723608972238054c24c4740137b2efbebabb'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
