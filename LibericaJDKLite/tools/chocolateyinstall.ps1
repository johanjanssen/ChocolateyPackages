$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20%2B37/bellsoft-jdk20%2B37-windows-amd64-lite.msi'
  Checksum64 = 'bfa5f5ede15fc7aa9c7aabe8fa4a42df83d50490'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
