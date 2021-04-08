# Get pod name
podname=$(kubectl get pods -l app=mssql-secondary1 -o custom-columns=:metadata.name)
# Open a bash shell in the pod's container
kubectl exec -it $podname -- /bin/bash
