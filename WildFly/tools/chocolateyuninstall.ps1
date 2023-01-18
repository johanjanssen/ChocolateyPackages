$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$version = "27.0.1"

$WildFlyDirectory = "$programFiles\WildFly"

rm -r "$WildFlyDirectory\wildfly-$version"

If ((Get-ChildItem -Force $WildFlyDirectory) -eq $Null) {
    rmdir $WildFlyDirectory 
}

