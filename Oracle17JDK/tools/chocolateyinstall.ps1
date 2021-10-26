$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.oracle.com/java/17/archive/jdk-17.0.1_windows-x64_bin.msi'
  Checksum64 = '61FE8EA15D2DAEC053593414D6BE0C930CAC9905F2A895FB9F88A0EFBCAEE2B6'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
