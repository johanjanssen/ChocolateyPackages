$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19.0.2%2B9/bellsoft-jre19.0.2%2B9-windows-amd64-full.msi'
  Checksum64 = '53a3925d5137905e0d35c49b684656d9c94de167'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
