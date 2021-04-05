# Copy the sample database to the pod
# Optionally download the AdventureWorks2014.bak file
# https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2014.bak

# Uncomment the following line to download the database
# curl -L -o AdventureWorks2014.bak 'https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2014.bak'

# Retrieve pod name to variable
podname=$(kubectl get pods | grep mssql | cut -c1-33)


# Copy adventureworks2014.bak db backup to pod
# copy syntax:
# kubectl cp /local/path namespace/podname:path/to/directory
echo Copying AdventureWorks2014 database to pod $podname
kubectl cp AdventureWorks2014.bak  $podname:/var/opt/mssql/data

# here's how to copy a file from the pod to local disk:
# kubectl cp $podname:/var/opt/mssql/data/AdventureWorks2014.bak AdventureWorks2014.bak
