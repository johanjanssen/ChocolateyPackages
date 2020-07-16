$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.8/sapmachine-jdk-11.0.8_windows-x64_bin.zip'
  Checksum64 = '19ED73A3BC2A1F8E1FC2409F4E3C1FBA9EF93D43EC267CB9EBCFAA5F0F43E3C8'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
