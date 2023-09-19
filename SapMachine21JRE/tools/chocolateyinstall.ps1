$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-21/sapmachine-jre-21_windows-x64_bin.zip'
  Checksum64 = 'f747b9ee576e5653d64a34385324113fcc7af9f3e12b8316317fd50b062e466b'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
