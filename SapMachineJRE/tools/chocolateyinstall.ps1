$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-15.0.1/sapmachine-jre-15.0.1_windows-x64_bin.msi'
  Checksum64 = 'DF92C1D42D040DB3AAF103FFE258985C8FE8E3EC3F68007AF01C686C2B353537'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
