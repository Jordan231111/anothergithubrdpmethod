$token = 2N1Zi2pEhbAED4bT8GL9i0APyIO_6ngRsqYB834VTpDiuEtR2

net.exe user $env:UserName "Password@001"
write-host Username: $env:UserName
write-host Password: Password@001

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

.\ngrok.exe config add-authtoken $token
.\ngrok.exe tcp 3389
