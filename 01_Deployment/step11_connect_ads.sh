# Connect to the SQL Server pod with Azure Data Studio
# Retrieve external IP address
ip=$(kubectl get services | grep mssql | cut -c47-60)
#mssql-service   LoadBalancer   10.0.117.188   40.81.6.134    

echo Connect Azure Data Studio to $ip
read -p "Press any key to start Azure Data Studio ..."

# Start Azure Data Studio on the host
echo $ip | xclip
azuredatastudio

# ... or use SSMS.
# Get external ip to connect to:
# kubectl get services
# Use the external ip from the output to connect to.
