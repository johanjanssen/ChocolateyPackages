$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-19.0.2/sapmachine-jre-19.0.2_windows-x64_bin.msi'
  Checksum64 = '1d7c1b85511d07f51f4c1d2c3387bcbb4aa6488157061a5bb78b47a7ac052134'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
