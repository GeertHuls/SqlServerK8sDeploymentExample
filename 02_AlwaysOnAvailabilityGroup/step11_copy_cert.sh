# Copy the certificates from the AG primary

# Retreive the pod anmes to variables
# Retrieve pod name to variable
podagp=$(kubectl get pods -l app=mssql-primary -o custom-columns=:metadata.name)
podags1=$(kubectl get pods -l app=mssql-secondary1 -o custom-columns=:metadata.name)
podags2=$(kubectl get pods -l app=mssql-secondary2 -o custom-columns=:metadata.name)

# First copy to local
echo Copying AG certificates from $podagp to localhost
kubectl cp $podagp:/var/opt/mssql/ag_certificate.cert ag_certificate.cert
kubectl cp $podagp:/var/opt/mssql/ag_certificate.key ag_certificate.key

# Turn it around to copy to secondary1
echo Copying AG certificates from localhost to pod $podags1
kubectl cp ag_certificate.cert  $podags1:/var/opt/mssql
kubectl cp ag_certificate.key  $podags1:/var/opt/mssql


# -- AG secondary2
# Next copy to secondary2
echo Copying AG certificates from localhost to pod $podags2
kubectl cp ag_certificate.cert $podags2:/var/opt/mssql 
kubectl cp ag_certificate.key $podags2:/var/opt/mssql