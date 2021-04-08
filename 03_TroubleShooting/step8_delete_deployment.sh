# Delete the deployment
kubectl delete -f sqlAGS2deployment.yaml

# Show the updated objects
kubectl get deplyments

echo Recreate the replica and service 
read -p "Press enter to continue"

# Recreate the deployment
kubectl apply -f sqlAGS2deployment.yaml

# Show the updated objects
kubectl get deployments
