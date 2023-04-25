$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-20.0.1/sapmachine-jre-20.0.1_windows-x64_bin.msi'
  Checksum64 = '82f075de31d3035522865407eb50d04c065de64628416107c1a03c01def526ad'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
