$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.10/sapmachine-jre-11.0.10_windows-x64_bin.msi'
  Checksum64 = '436D8AD32E6984D8DB770C917EF460E729C7DD8725BD5878E22C5677EEE70997'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
