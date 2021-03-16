$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-16/sapmachine-jre-16_windows-x64_bin.msi'
  Checksum64 = '774078C8BADA8C9962F857C0C4924721E392CDE8EA5D6E38A84A4F6FB6593CF5'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
