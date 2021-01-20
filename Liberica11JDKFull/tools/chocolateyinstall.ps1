$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.10+9/bellsoft-jdk11.0.10+9-windows-amd64-full.msi'
  Checksum64 = 'bf5f89c8ab21d6c5356441ed75fb2c46371f0950'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
