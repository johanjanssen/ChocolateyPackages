$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.17%2B7/bellsoft-jre11.0.17%2B7-windows-amd64-full.msi'
  Checksum64 = '5ee6acf5348bf0197ac4c542b6a43b546514c0fa'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
