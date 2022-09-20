$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-19/sapmachine-jre-19_windows-x64_bin.msi'
  Checksum64 = 'a26e38d5f157353ed785112baf258426c536b0a6999d396a0245da7abe2da1d5'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
