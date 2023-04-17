$token = "YOUR_NGROK_TOKEN"

net.exe user $env:UserName "Password@001"
write-host Username: $env:UserName
write-host Password: Password@001

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

.\ngrok.exe config add-authtoken $token
.\ngrok.exe tcp 3389
