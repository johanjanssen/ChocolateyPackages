$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.3/sapmachine-jdk-17.0.3_windows-x64_bin.msi'
  Checksum64 = '914ce50df3ab7f78698c1557937ba7ccdb97a8d9e0dab855f48ab0a059ba3113'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
