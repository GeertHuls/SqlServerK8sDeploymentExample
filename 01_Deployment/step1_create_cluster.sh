
# Login to Azure
az login
# Create an Azure resource group
az group create --name SQLCLRG --location westus
# Create a two node cluster
az aks create --resource-group SQLCLRG --name SQLCL \
--node-count 2 --generate-ssh-keys --node-vm-size=Standard_B2s


