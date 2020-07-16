$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.8/sapmachine-jdk-11.0.8_windows-x64_bin.msi'
  Checksum64 = '746C5F3683247B432FB25BD8209401BDD654C734D8121DD782135B815DB4599C'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
