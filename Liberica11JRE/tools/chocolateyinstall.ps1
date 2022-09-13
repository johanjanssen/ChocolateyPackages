$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.16.1%2B1/bellsoft-jre11.0.16.1%2B1-windows-amd64.msi'
  Checksum64 = '95cf43b8085fd5e85c2307c4af6d77bf2f8204a1'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
