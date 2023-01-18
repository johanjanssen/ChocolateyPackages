$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.6/sapmachine-jre-17.0.6_windows-x64_bin.msi'
  Checksum64 = '1be56c3500d099a78073a36db40d26c3b65563c21d8fbe3908b6e4b148f40e06'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
