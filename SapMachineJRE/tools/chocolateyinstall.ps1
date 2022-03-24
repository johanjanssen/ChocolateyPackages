$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-18/sapmachine-jre-18_windows-x64_bin.msi'
  Checksum64 = '809ee9f11800f3d22fc6a5bb78363d29de808ad457dd1bebb1350ac31d0a8630'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
