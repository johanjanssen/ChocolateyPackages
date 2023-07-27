$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.8%2B7/bellsoft-jdk17.0.8%2B7-windows-amd64.msi'
  Checksum64 = '9520865a0b4ae76634f5a2752f8de434c3c652dd'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
