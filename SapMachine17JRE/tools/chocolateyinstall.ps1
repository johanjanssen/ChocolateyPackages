$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.3/sapmachine-jre-17.0.3_windows-x64_bin.msi'
  Checksum64 = '32ce37e24a6dbe493dae22dd9212b928b06c5d0d1c1f4f09af7931ee2b7db555'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
