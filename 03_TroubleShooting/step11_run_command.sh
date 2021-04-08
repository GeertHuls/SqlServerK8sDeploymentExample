# Get pod name
podname=$(kubectl get pods -l app=mssql-primary -o custom-columns=:metadata.name)

# Open a command in the pod's container
kubectl exec -it $podname -- top

kubectl exec -it $podname -- /opt/mssql-tools/bin/sqlcmd -S. -U sa -P SQL2019AGPassword -Q 'select @@version'
