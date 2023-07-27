$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-20.0.2/sapmachine-jdk-20.0.2_windows-x64_bin.msi'
  Checksum64 = '81217d8606c57f7cb1aa1479e8c21658199b7ef4d90db7bb675f79c030fcef8c'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
