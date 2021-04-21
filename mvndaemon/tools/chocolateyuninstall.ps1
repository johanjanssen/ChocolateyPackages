$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\mvndaemon"

rm -r "$installDir\mvnd-0.4.3-windows-amd64"
