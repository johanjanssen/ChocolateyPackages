$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18%2B37/bellsoft-jdk18%2B37-windows-amd64-full.msi'
  Checksum64 = 'f1808693a42a77283a56e49614330d9cee12b9b3'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
