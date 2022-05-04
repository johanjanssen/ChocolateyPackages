$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-11.0.14.1_1-31205-windows-x64.msi'
  Checksum64 = '2c2bdde7a0c0b3cfce94aca2c184a929c6b8f09067ecf6b109000aeb737c1177'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
