$WildFlyDirectory = 'C:\Program Files\LibericaMissionControl' 

rm -r 'C:\Program Files\LibericaMissionControl\lmc7.0'

If ((Get-ChildItem -Force $WildFlyDirectory) -eq $Null) {
    rmdir $WildFlyDirectory 
}

