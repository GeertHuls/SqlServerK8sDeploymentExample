# Display the Kubernetes Logs
kubectl logs -l app=mssql-primary

# Display the logs from a previous run
#  Use the -p flag to look at the logs from containers that 
#  have exited
kubectl logs -p -l app=mssql-primary
