$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.2%2B9/bellsoft-jdk17.0.2%2B9-windows-amd64-lite.msi'
  Checksum64 = '16180aaed8504aa0795d71b234fdd367ee8e6f87'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
