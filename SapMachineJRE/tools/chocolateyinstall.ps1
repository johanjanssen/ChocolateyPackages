$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.1/sapmachine-jre-17.0.1_windows-x64_bin.msi'
  Checksum64 = '46307E1FD02EA6F59D5CCFC1FC2D35C4D2CC1225FC5413A18A9373C9BDB5A3E4'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
