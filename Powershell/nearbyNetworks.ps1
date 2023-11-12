# display the nearby networks using Write-Host

$filteredNetworks = $nearbyNetworks | Select-String "SSID", "Authentication", "Encryption"

Write-Host $filteredNetworks
