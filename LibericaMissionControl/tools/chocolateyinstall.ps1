$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\LibericaMissionControl'
    Url              = 'http://download.bell-sw.com/lmc/bellsoft-lmc7.0-windows-amd64.zip'
    Checksum         = 'e3694968827effbce19958747e3b69e08a1dda2a'
    ChecksumType     = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
