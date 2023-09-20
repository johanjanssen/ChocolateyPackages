$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-21/sapmachine-jre-21_windows-x64_bin.msi'
  Checksum64 = '46b507395253a252c518aec8f70c492124bbff7dc69464dc8a84bcd01a5e05c8'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
