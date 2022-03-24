$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18%2B37/bellsoft-jdk18%2B37-windows-amd64.msi'
  Checksum64 = '78094ef450a4a487bf98ee2b33ed8c70ddcbb524'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
