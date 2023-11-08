#Enumerates nearby Wifi Networks using netsh

$nearbyNetworks = netsh wlan show networks mode=Bssid

Invoke-Expression $nearbyNetworks