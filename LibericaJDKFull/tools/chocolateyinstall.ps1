$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15+36/bellsoft-jdk15+36-windows-amd64-full.msi'
  Checksum64 = '4e8cae12a17393e9586d858e3c7d99297941e9b2'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
