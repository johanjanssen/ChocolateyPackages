$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-20/sapmachine-jre-20_windows-x64_bin.msi'
  Checksum64 = '08fbe0c6e4b3c0e26b7c28f7e25457dd2ab7ee79882d2da67f2a534b9c8f4896'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
