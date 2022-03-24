$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18%2B37/bellsoft-jre18%2B37-windows-amd64-full.msi'
  Checksum64 = 'b820b0088cb85d7c742797726ddd6cd049496272'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
