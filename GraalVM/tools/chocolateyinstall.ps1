$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\GraalVM'
    Url64            = 'https://github.com/oracle/graal/releases/download/vm-19.2.0.1/graalvm-ce-windows-amd64-19.2.0.1.zip'
    Checksum64       = '8E721AB4BA74E1186C90BC28327E30FDBE874E474AB727E954960C59CBE3234D'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\graalvm-ce-19.2.0.1 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\GraalVM\graalvm-ce-19.2.0.1\bin' -PathType 'Machine'
