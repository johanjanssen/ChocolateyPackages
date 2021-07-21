$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.12/sapmachine-jre-11.0.12_windows-x64_bin.msi'
  Checksum64 = '4AF813120DC7B5F07852C540EE89950FDDE7FBE362DCACA535EB5CD79BD13C25'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
