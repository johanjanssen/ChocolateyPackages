$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-14.0.2/sapmachine-jdk-14.0.2_windows-x64_bin.msi'
  Checksum64 = '07BE174B9EF4D89EDCB3E5D701810C9ECEB03FF0691337662A55CE40258DF908'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
