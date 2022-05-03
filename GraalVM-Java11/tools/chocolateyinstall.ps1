$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\GraalVM"
$version = "22.1.0"

$packageArgs = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = $targetDir = $installDir
    Url64bit = 'https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.1.0/graalvm-ce-java11-windows-amd64-22.1.0.zip'
    Checksum64 = 'c7a29f73f626fcf2a482d6ee9d1c728d09248c948b5322988e0886ad4e9255b2'
    ChecksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\graalvm-ce-java11-$version 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath $targetDir\graalvm-ce-java11-$version\bin -PathType 'Machine'
