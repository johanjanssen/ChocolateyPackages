$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.9+11/bellsoft-jdk11.0.9+11-windows-amd64-full.msi'
  Checksum64 = 'ce427f539c8423305d611cc4ced453f98566563f'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
