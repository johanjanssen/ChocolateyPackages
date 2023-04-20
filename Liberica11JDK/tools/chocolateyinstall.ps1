$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.19%2B7/bellsoft-jdk11.0.19%2B7-windows-amd64.msi'
  Checksum64 = '3978ee801985ca61d99e67827a586e774ee6a852'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
