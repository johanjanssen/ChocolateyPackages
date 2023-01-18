$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.6/sapmachine-jdk-17.0.6_windows-x64_bin.msi'
  Checksum64 = '2d133b54ec96ae1fe3342c4e8e7d5404cf6a25bec5a7542645f71122505cc898'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
