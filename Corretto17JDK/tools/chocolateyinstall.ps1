$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/17.0.6.10.1/amazon-corretto-17.0.6.10.1-windows-x64.msi'
  Checksum64 = '1ae096ae7e62bdd28bf0e360e31ccff8'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
