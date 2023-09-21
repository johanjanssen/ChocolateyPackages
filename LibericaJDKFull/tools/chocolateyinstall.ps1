$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/21%2B37/bellsoft-jdk21%2B37-windows-amd64-full.msi'
  Checksum64 = 'a061e04570abf43c82bb52c5908572070f9a354f'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
