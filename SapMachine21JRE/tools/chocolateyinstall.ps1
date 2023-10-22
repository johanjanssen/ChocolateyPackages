$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-21.0.1/sapmachine-jre-21.0.1_windows-x64_bin.msi'
  Checksum64 = '4d6e0c8d00410da0184d538645088a4fd04c41816c922333bfc19d9fb5a28693'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
