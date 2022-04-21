$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.3%2B7/bellsoft-jre17.0.3%2B7-windows-amd64.msi'
  Checksum64 = 'd7af404683bb53a4266cef05a59621eca2d530d5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
