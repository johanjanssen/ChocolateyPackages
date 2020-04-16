$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-14.0.1/sapmachine-jre-14.0.1_windows-x64_bin.msi'
  Checksum64 = 'D321C859BB4ECABCFE4016DF988566679D397137ECCCF1C11F9A859FFE176C84'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
