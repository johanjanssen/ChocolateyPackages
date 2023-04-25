$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.7/sapmachine-jre-17.0.7_windows-x64_bin.msi'
  Checksum64 = '59e69408676a47f54e85c071abccccbbff6b5f724649505ad4ce70c66df10892'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
