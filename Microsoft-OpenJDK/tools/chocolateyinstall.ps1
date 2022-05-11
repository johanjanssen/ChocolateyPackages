$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-17.0.3-windows-x64.msi'
  Checksum64 = '76ae342df1ac9acca0127da84e4b374df2342bef4f03359dba97fb03dbff1e1f'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
