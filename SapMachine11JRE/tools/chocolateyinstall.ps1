$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.15/sapmachine-jre-11.0.15_windows-x64_bin.msi'
  Checksum64 = '7945c4481e7425a85ea5944851241de50415a66a97cf1f575f53ec839ceaa62a'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
