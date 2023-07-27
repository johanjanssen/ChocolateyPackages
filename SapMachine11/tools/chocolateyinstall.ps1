$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.20/sapmachine-jdk-11.0.20_windows-x64_bin.msi'
  Checksum64 = 'a80875ffa275c53e77f4e668b95aa93165b97265a3669f8157541aa78d6fe438'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
