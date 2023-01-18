$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.6%2B10/bellsoft-jre17.0.6%2B10-windows-amd64.msi'
  Checksum64 = 'af0cc96d400bffa9be372c344333fd262adad178'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
