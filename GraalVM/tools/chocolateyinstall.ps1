$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\GraalVM'
    Url64            = 'https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-19.3.1/graalvm-ce-java11-windows-amd64-19.3.1.zip'
    Checksum64       = '1290C076B66735ED9FC91EDC1B458E66107B18BCB223D8E3842FAA370F2FE066'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\graalvm-ce-java11-19.3.1 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\GraalVM\graalvm-ce-java11-19.3.1\bin' -PathType 'Machine'
