$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.15%2B10/bellsoft-jre11.0.15%2B10-windows-amd64-full.msi'
  Checksum64 = 'e503230e4b6ea043084791af13ca380688691453'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
