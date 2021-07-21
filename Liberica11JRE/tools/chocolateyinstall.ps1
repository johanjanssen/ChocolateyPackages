$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.12+7/bellsoft-jre11.0.12+7-windows-amd64.msi'
  Checksum64 = 'e57117c6ecd237d7abfd0e4b0e7799e33ba8672c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
