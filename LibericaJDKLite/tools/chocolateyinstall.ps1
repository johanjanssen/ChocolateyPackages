$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/21%2B37/bellsoft-jdk21%2B37-windows-amd64-lite.msi'
  Checksum64 = '9d3f29fde17d3141c805dcd45ddcd28b944a2d30'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
