$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-21.0.1/sapmachine-jdk-21.0.1_windows-x64_bin.msi'
  Checksum64 = 'fbca3339248aa045fce94c8943a908c6172842633421b4462820aea0df86c46c'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
