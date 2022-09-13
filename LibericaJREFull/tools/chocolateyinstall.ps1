$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.2%2B10/bellsoft-jre18.0.2%2B10-windows-amd64-full.msi'
  Checksum64 = '56e7cf4b1d282467abefba5287d64adbe91b444a'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
