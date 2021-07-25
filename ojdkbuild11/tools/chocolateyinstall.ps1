$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-11-openjdk-11.0.12.7-1/java-11-openjdk-11.0.12.7-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = '975fe76ce3e821251313e9a17e248f74a875e1d8bff40f026b4573062bae2a10'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
