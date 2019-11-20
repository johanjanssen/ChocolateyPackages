$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\GraalVM'
    Url64            = 'https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-19.3.0/graalvm-ce-java11-windows-amd64-19.3.0.zip'
    Checksum64       = 'C48F8C524110FA7E11F2F39A62FF2E488B13F4B3F8BABAA1DECF5E35C812C25A'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\graalvm-ce-java11-19.3.0 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\GraalVM\graalvm-ce-java11-19.3.0\bin' -PathType 'Machine'
