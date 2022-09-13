$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u342%2B7/bellsoft-jdk8u342%2B7-windows-amd64.msi'
  Checksum64 = '6f1ea34c54089e2e72e59c38e4f8d4f5508dfe42'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
