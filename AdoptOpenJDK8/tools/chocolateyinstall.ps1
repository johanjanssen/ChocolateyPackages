$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\AdoptOpenJDK'
    Url64            = 'https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u222-b10/OpenJDK8U-jdk_x64_windows_hotspot_8u222b10.zip'
    Checksum64       = '30aec15679a6e7a539f0280587105164c74722e0764e1e661211cb31fbcec125'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk8u222-b10 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\AdoptOpenJDK\jdk8u222-b10\bin' -PathType 'Machine'
