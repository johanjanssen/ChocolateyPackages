$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.18%2B10/bellsoft-jre11.0.18%2B10-windows-amd64.msi'
  Checksum64 = '41229bb175c3badcf2b16b76a53412d121e366a9'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
