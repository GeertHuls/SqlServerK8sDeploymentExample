# display the K8s secrets
kubectl get secret mssql-secret -o jsonpath="{.data.SA_PASSWORD}" | base64 --decode
echo " "