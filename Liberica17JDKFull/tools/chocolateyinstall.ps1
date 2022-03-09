$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.2%2B9/bellsoft-jdk17.0.2%2B9-windows-amd64-full.msi'
  Checksum64 = 'cd315fba61fb3b34d6980ecc7ee85b8f463a04a5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
