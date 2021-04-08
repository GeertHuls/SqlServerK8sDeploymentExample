# Retrieve YAML for a pod

# Retrieve pod name to variable
podname=$(kubectl get pods -l app=mssql-primary -o custom-columns=:metadata.name)

# Retrieve the YAML for the pod
kubectl get pod $podname -o yaml  
