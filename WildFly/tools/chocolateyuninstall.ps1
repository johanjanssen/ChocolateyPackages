$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$version = "26.1.2"

$WildFlyDirectory = "$programFiles\WildFly"

rm -r "$WildFlyDirectory\wildfly-$version"

If ((Get-ChildItem -Force $WildFlyDirectory) -eq $Null) {
    rmdir $WildFlyDirectory 
}

