# display the nearby networks using Write-Host

$nearbyNetworks = netsh wlan show networks mode=Bssid

$filteredNetworks = $nearbyNetworks | Select-String "SSID", "Authentication", "Encryption"

Write-Host "Script #7 Running..."
Write-Host "List of Nearby Networks:"
Write-Host $filteredNetworks
