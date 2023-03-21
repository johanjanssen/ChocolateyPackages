$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-20/sapmachine-jdk-20_windows-x64_bin.msi'
  Checksum64 = 'a4595f5369f505f77705059450c4ec681672704a3f1c020e3b09dea38dc5a2af'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
