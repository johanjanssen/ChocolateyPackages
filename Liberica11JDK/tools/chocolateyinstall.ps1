$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.4/bellsoft-jdk11.0.4-windows-amd64.msi'
  Checksum64 = '5da8cecce35d0b21a0b5deef2fa9f57e49b45d1f'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
