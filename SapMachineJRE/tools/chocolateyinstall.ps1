$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-20.0.2/sapmachine-jre-20.0.2_windows-x64_bin.msi'
  Checksum64 = 'b7aa31fc34c64e994fef73c7fed7dac032800f210044322688e2e8400a718bf8'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
