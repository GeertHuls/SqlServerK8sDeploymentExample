# Use K8 secrets to hold required sa password for SQL Server container
kubectl create secret generic mssql-secret \
 --from-literal=SA_PASSWORD="SQL2019AGPassword"
