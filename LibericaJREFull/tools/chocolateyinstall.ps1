$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/16.0.2+7/bellsoft-jre16.0.2+7-windows-amd64-full.msi'
  Checksum64 = '02263864fb0ec35cb28eea3519183973f293e55f'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
