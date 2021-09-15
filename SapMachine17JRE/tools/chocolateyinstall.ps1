$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17/sapmachine-jre-17_windows-x64_bin.msi'
  Checksum64 = 'B7B48FF23C44A497FEFEFB1069F70D8F50093A52E4841F369F2AF343D15CCA7C'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
