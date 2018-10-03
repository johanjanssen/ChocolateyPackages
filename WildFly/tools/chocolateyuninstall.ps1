$WildFlyDirectory = 'C:\Program Files\WildFly' 

rm -r 'C:\Program Files\WildFly\wildfly-14.0.1.Final'

If ((Get-ChildItem -Force $WildFlyDirectory) -eq $Null) {
    rmdir $WildFlyDirectory 
}

