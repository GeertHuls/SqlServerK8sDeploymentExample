#Create Resource Group
az group create --name SQLAGRG --location westus

#Create K8 cluster
#az aks create --resource-group myAGRG --name myAGCluster --node-count 3 --generate-ssh-
az aks create --resource-group SQLAGRG --name SQLAG --node-count 3 \
 --generate-ssh-keys --node-vm-size=Standard_B2ms
