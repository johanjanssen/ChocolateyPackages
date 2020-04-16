$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-14.0.1/sapmachine-jdk-14.0.1_windows-x64_bin.msi'
  Checksum64 = 'E240F33490F8BB8211C1EC39C6078282AEBA0A3C087627193BE2DE6774AE84AD'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
