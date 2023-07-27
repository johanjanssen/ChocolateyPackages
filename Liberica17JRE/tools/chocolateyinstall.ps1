$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.8%2B7/bellsoft-jre17.0.8%2B7-windows-amd64.msi'
  Checksum64 = '3ff96704a982814be84869be39f0ff8522993f93'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
