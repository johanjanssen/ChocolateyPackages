$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-13/sapmachine-jdk-13_windows-x64_bin.msi'
  Checksum64 = '3823d88d764cb301afa16c3c91cf98d226bf031ad174518fb01909f3c0ee1b05'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
