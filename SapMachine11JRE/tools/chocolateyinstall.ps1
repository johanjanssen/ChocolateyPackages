$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.19/sapmachine-jre-11.0.19_windows-x64_bin.msi'
  Checksum64 = 'b124d1c0fe38b8cc3bb5c6ccd74fa30af0a210b9beb4113685d1b11b42a07700'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
