$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\GraalVM'
    Url64            = 'https://github.com/oracle/graal/releases/download/vm-19.2.1/graalvm-ce-windows-amd64-19.2.1.zip'
    Checksum64       = '244155151A431D98F87B49BA7B5A131B5CEA7C9569ED6FE9375D011ADE06D8AC'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\graalvm-ce-19.2.1 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\GraalVM\graalvm-ce-19.2.1\bin' -PathType 'Machine'
