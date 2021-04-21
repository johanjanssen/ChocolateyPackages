$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.11/sapmachine-jre-11.0.11_windows-x64_bin.msi'
  Checksum64 = '43E302448282B18E0AAA107DE7C7A33222CD025F05729DBC4598F507FDE3ADCA'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
