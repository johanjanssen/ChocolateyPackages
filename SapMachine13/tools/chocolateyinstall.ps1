$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-13.0.1/sapmachine-jdk-13.0.1_windows-x64_bin.msi'
  Checksum64 = 'E6F4240B0D735313E81A04E42248BADA01469BF336F0311467ABE163F702A379'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
