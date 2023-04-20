$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u372%2B7/bellsoft-jre8u372%2B7-windows-amd64.msi'
  Checksum64 = 'bc0a18fa9fd610e2eaa1808c197a39b63afaa0f1'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
