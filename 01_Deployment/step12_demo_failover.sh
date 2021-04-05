# Simulate a failure by killing the pod
# Assign the pod name to a varaible
podname=$(kubectl get pods | grep mssql | cut -c1-33)

# Delete the pod
echo Cause a failover by deleting pod $podname
kubectl delete pod $podname

# Wait one second
echo Waiting 3 second to show newly started pod
sleep 3

echo Retrieving running pods
kubectl get pods