$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]

$WildFlyDirectory = "$programFiles\WildFly"

rm -r "$WildFlyDirectory\wildfly-20.0.1.Final"

If ((Get-ChildItem -Force $WildFlyDirectory) -eq $Null) {
    rmdir $WildFlyDirectory 
}

