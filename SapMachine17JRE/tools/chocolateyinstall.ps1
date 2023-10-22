$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.9/sapmachine-jre-17.0.9_windows-x64_bin.msi'
  Checksum64 = '39b40ff606f02e3b6e8fb17d4fc71506ed45f269f2cea76515c9dedafd47fb50'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
