$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.16.1%2B1/bellsoft-jdk11.0.16.1%2B1-windows-amd64.msi'
  Checksum64 = '0dde2e3bc341447eaa0f314e2afb287f969df1c2'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
