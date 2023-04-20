$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.7%2B7/bellsoft-jdk17.0.7%2B7-windows-amd64.msi'
  Checksum64 = 'a4a44665d2d9f34e05f87f96b14ecbd3bd833eea'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
