$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.oracle.com/java/17/archive/jdk-17_windows-x64_bin.msi'
  Checksum64 = 'b59d7216e11e438179dd716404d9bbb45fdd11714cccf553b857cc90c525ebc3'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
