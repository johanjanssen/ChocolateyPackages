$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/13.0.1/bellsoft-jdk13.0.1-windows-amd64.msi'
  Checksum64 = '84ffe0d2786d26ee4705e317c0888f67bd74902d'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
