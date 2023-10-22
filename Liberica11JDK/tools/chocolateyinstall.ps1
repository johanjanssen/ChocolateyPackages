$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.21%2B10/bellsoft-jdk11.0.21%2B10-windows-amd64.msi'
  Checksum64 = 'ee23c85da3e90f226e5e52d77445719da1af965d'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
