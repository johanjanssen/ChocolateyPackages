$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-16.0.2/sapmachine-jre-16.0.2_windows-x64_bin.msi'
  Checksum64 = 'A1309D32F4C7CFA0F5AE6434A57408ECB3DF78AEFEEF550850AD4933E3EA2B1C'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
