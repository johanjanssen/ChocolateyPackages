$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.13/sapmachine-jre-11.0.13_windows-x64_bin.msi'
  Checksum64 = '477B3F919690752068CED144B07610E6AAE499AF649B98C5566C9B9ED0AC9A5E'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
