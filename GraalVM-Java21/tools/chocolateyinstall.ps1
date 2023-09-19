$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\GraalVM"
$version = "21+35.1"

$packageArgs = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = $targetDir = $installDir
    Url64bit = 'https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-21.0.0/graalvm-community-jdk-21.0.0_windows-x64_bin.zip'
    Checksum64 = '808b65fae4ab03a2f52b5850852d7c7e098608aa8bbab918d40e8aeec870ae5f'
    ChecksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\graalvm-community-openjdk-$version 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath $targetDir\graalvm-community-openjdk-$version\bin -PathType 'Machine'
