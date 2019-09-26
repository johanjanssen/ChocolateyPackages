$MissionControlDirectory = 'C:\Program Files\LibericaMissionControl' 

rm -r 'C:\Program Files\LibericaMissionControl\lmc7.0'

If ((Get-ChildItem -Force $MissionControlDirectory) -eq $Null) {
    rmdir $MissionControlDirectory 
}

