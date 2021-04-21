$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-16.0.1/sapmachine-jdk-16.0.1_windows-x64_bin.msi'
  Checksum64 = 'AF0530ED3A04E5CC8529D881371D3C4F410A4D24A00523B65EC1AF71212DFE6E'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
