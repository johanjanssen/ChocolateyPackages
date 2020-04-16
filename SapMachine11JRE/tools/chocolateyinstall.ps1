$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.7/sapmachine-jre-11.0.7_windows-x64_bin.msi'
  Checksum64 = '18DA3C8933B7F09C77565E590AF9854A216B7C5672D0FAF3E07794DD78B3A59A'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
