# Path to the folder where the script is executing
$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $toolsDir
    Url64bit         = 'https://ci.adoptopenjdk.net/view/JMC/job/jmc-build/job/8.x.x/lastSuccessfulBuild/artifact/target/products/org.openjdk.jmc-8.0.0-win32.win32.x86_64.zip'
    Checksum64       = '23C66B2B3CEC2DD9943924F42C375FE882580F966F28EF6F548B27A36EA430A3'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
