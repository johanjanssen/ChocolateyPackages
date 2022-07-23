$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.2%2B10/bellsoft-jdk18.0.2%2B10-windows-amd64-full.msi'
  Checksum64 = '34853036f447034caabc55d60837fea1838fcb54'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
