$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-15/sapmachine-jre-15_windows-x64_bin.msi'
  Checksum64 = '219B4C52EB88C7B33BD4073380B1BB6F8D956E9385E57F334C80F5FD36753929'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
