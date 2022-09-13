$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.16.1/sapmachine-jre-11.0.16.1_windows-x64_bin.msi'
  Checksum64 = '4817a3848a2b8d4d84c555700b337189d8bc8506b2ef97d84d0daedea803254e'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
