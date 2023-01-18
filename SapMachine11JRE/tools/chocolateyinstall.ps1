$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.18/sapmachine-jre-11.0.18_windows-x64_bin.msi'
  Checksum64 = '051d5d61e09523c80d3778ee37315a2b70921f1581d200847808252b80f57d57'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
