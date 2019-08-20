$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\AdoptOpenJDK'
    Url64            = 'https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jre_x64_windows_hotspot_8u212b03.zip'
    Checksum64       = 'c09bab89cd82483c371597c5c364094a145c1fbba43a1d3d7c3e350b89dedc89'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk8u212-b03-jre 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\AdoptOpenJDK\jdk8u212-b03-jre\bin' -PathType 'Machine'
