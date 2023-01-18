$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19.0.2%2B9/bellsoft-jdk19.0.2%2B9-windows-amd64-lite.msi'
  Checksum64 = 'af5ec4628d23ea17c80be1eae9770560b9cd5f72'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
