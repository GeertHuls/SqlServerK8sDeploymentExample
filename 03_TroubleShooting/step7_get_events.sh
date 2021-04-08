# Display the all events sorted
kubectl get events --sort-by=.metadata.creationTimestamp

# Display just pod events
kubectl get events --field-selector involvedObject.kind=Pod
