$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19%2B37/bellsoft-jdk19%2B37-windows-amd64-full.msi'
  Checksum64 = 'eb17d4a6482b74e1c005a03ae074dce45b4f4b8a'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
