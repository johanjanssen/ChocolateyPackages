$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://aka.ms/download-jdk/microsoft-jdk-11.0.15-windows-x64.msi'
  Checksum64 = '104f481430cbdeaa73775ff273276dd3b35181ff657f78d2173534f5aae476a4'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
