$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18%2B37/bellsoft-jdk18%2B37-windows-amd64-lite.msi'
  Checksum64 = 'ef2e9c532dc3b63f1d77be4668b80f7ac12a5789'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
