$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u332%2B9/bellsoft-jdk8u332%2B9-windows-amd64.msi'
  Checksum64 = '8a6314d04f7bbef322af9f0c4ddc422645092c88'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
