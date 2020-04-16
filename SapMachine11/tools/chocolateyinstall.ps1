$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.7/sapmachine-jdk-11.0.7_windows-x64_bin.msi'
  Checksum64 = 'C8BC9EBCD584BD4A80D2C906FB7AEC640B1BEC33F5D01572A9F35BA53993E849'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
