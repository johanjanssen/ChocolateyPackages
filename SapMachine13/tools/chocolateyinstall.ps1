$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-13/sapmachine-jdk-13_windows-x64_bin.msi'
  Checksum64 = '6B2437ACF6EB80F30C221432B4400118784CCCC57F70CA777B919BE049362FA3'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
