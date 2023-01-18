$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.6%2B10/bellsoft-jdk17.0.6%2B10-windows-amd64-full.msi'
  Checksum64 = '3a043268a734624dd3a1879cf15caa4eb7b3e66f'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
