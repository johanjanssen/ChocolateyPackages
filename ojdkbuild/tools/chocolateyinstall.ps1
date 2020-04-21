$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/ojdkbuild/ojdkbuild/releases/download/java-14-openjdk-14.0.1.7-0/java-14-openjdk-14.0.1.7-1.windows.ojdkbuild.x86_64.msi'
  Checksum64 = '3ee6ec20f472bcc9608153b659d63320a0471968d756a9e7d9e5997c3c580e7f'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
