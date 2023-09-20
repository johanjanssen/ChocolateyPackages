$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-21/sapmachine-jdk-21_windows-x64_bin.msi'
  Checksum64 = '0a7e9c7aaa6c17ce6e66c70f07b4142a4b68f2be3a08fd54413da2d7a7c1b486'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
