$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-17.0.8-windows-x64.msi'
  Checksum64 = 'f029e88cdadce4e32bf8e45c2ae31d6015996f10bd836eb255bae86d8246d332'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
