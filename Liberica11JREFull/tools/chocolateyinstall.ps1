$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.18%2B10/bellsoft-jre11.0.18%2B10-windows-amd64-full.msi'
  Checksum64 = '63d722dab98370663f1f0f65603674405efadcee'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
