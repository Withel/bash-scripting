#/bin/bash 

az login
sleep 20

az account set --subscription 'ef6cfe01-e416-4a33-987d-8153eee258d6'

az network public-ip list -g z-azure-training-klimas | grep ipAddress

