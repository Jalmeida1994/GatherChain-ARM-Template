## Start Commands in Azure CLI (Bash)

### Login to Azure
az login

### Create Resource Group
az group create --name rg_thesisbloc --location northeurope

### Deploy ARM template to created RG
az deployment group create --resource-group rg_thesisbloc --template-file azuredeploy.json --parameters azuredeploy.parameters.json

### Cleanup 
az group delete --name rg_thesisbloc -y