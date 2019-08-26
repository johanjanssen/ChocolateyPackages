$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\OpenJDK'
    Url64            = 'https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.4%2B11/OpenJDK11U-jdk_x64_windows_11.0.4_11.zip'
    Checksum64       = '55C3EB8D6943FCFC2C7910207B41B81D47FFD6A4BB83A2D9DEB41C6DC3A5DF58'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\openjdk-11u-11.0.4_11 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\OpenJDK\openjdk-11u-11.0.4_11\bin' -PathType 'Machine'
