$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20.0.1%2B10/bellsoft-jre20.0.1%2B10-windows-amd64.msi'
  Checksum64 = 'd2202f09f465d7e512c7bed93f8dd60047f9b9f4'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
