$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19.0.2%2B9/bellsoft-jdk19.0.2%2B9-windows-amd64.msi'
  Checksum64 = 'e257fb7c8b4671c7a00d86abf295a2d6f5c8ee03'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
