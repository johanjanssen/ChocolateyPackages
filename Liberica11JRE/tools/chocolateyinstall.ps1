$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.14%2B9/bellsoft-jre11.0.14%2B9-windows-amd64.msi'
  Checksum64 = '0afba7af03db67e5dbac16bcc6a7fadb97824dc5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
