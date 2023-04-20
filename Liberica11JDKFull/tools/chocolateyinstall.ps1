$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.19%2B7/bellsoft-jdk11.0.19%2B7-windows-amd64-full.msi'
  Checksum64 = '6e3e8c6b7663f1ee369df51e11558fd40aad12d1'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
