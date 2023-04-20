$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.7%2B7/bellsoft-jre17.0.7%2B7-windows-amd64.msi'
  Checksum64 = '9ebc3086f9ec6aa8d22b437c7acdbd9184ec0139'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
