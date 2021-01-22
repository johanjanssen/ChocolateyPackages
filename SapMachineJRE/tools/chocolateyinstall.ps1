$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-15.0.2/sapmachine-jre-15.0.2_windows-x64_bin.msi'
  Checksum64 = '6A0AA526990584ABBF308F18F61FF2EC6862A5CE94698AD0F9163ECC09B13A2A'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
