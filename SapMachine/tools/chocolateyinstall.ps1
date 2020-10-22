$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-15.0.1/sapmachine-jdk-15.0.1_windows-x64_bin.msi'
  Checksum64 = 'F1178CF7BB28F1BA6D22326EAF86973FA905502DB20972F61A9ADBA59BF28B01'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
