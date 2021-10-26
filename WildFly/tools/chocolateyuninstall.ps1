$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]

$WildFlyDirectory = "$programFiles\WildFly"

rm -r "$WildFlyDirectory\wildfly-25.0.0.Final"

If ((Get-ChildItem -Force $WildFlyDirectory) -eq $Null) {
    rmdir $WildFlyDirectory 
}

