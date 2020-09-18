$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-15/sapmachine-jdk-15_windows-x64_bin.msi'
  Checksum64 = '16446B0696928E2CEA0D0A3113E5DF76DFFB2722F0625241A9020E67722AC488'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
