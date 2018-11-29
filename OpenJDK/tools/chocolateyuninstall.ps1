if (Test-ProcessAdminRights) {
    $pathType = 'Machine'
} else {
    $pathType = 'User'
}
Uninstall-ChocolateyEnvironmentVariable 'JAVA_HOME' $pathType
