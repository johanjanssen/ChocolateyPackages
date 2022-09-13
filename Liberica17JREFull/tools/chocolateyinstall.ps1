$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.4.1%2B1/bellsoft-jre17.0.4.1%2B1-windows-amd64-full.msi'
  Checksum64 = '21fa821e98429c2ae9e3105b6e94236e7624b59c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
