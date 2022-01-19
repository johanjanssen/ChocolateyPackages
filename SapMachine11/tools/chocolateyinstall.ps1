$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.14/sapmachine-jdk-11.0.14_windows-x64_bin.msi'
  Checksum64 = '7b9a4d543b5eb902d38af27b35349759cdcd7eda2c56d25ece28dc73bdbd34c9'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
