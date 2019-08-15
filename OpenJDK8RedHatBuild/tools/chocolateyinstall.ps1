$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\OpenJDK'
    Url64            = 'https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b03/OpenJDK8u-x64_windows_8u212b03.zip'
    Checksum64       = '9942E99168D1D582820A2DB56922A702F3909379E1E302DE983D7DF9111AAD8F'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\openjdk-8u212-b03 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\OpenJDK\openjdk-8u212-b03\bin' -PathType 'Machine'
