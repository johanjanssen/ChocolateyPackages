$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.5%2B8/bellsoft-jdk17.0.5%2B8-windows-amd64.msi'
  Checksum64 = 'df3f534e9d0fadd29257d0d8d53eabe698c6e727'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
