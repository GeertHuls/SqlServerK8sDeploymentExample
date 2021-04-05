# Use K8 secrets to hold required sa password for SQL Server container
kubectl create secret generic mssql-secret \
 --from-literal=SA_PASSWORD="MySQL2019Password"

# List secrets:
# kubectl get secret
