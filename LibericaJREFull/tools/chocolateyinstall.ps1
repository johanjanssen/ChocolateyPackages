$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19%2B37/bellsoft-jre19%2B37-windows-amd64-full.msi'
  Checksum64 = 'babe89520baf2bb5375784aaa62184db6e7f039e'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
