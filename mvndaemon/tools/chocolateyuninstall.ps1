$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\mvndaemon"

rm -r "$installDir\maven-mvnd-0.9.0-windows-amd64"
