$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-18.0.2/sapmachine-jre-18.0.2_windows-x64_bin.msi'
  Checksum64 = 'ae12a9760d5a19dc568c572c823bed48d2a6fdc30a5d1b43235b40e90bc34fe1'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
