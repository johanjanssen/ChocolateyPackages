$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-18.0.1/sapmachine-jdk-18.0.1_windows-x64_bin.msi'
  Checksum64 = '894d3f1415ca3a559a447eb502163b61d4ecbcb6a5ac1dd2bc26adff8e536854'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
