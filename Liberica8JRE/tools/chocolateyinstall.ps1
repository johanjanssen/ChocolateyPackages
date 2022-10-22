$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u352%2B8/bellsoft-jre8u352%2B8-windows-amd64.msi'
  Checksum64 = 'bb4dad30c5cd6611c64f3e265300c3c5f509e9b6'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
