$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.20%2B8/bellsoft-jdk11.0.20%2B8-windows-amd64-full.msi'
  Checksum64 = 'f56c0d05b7e7061d88998836f4d31cff83459bb0'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
