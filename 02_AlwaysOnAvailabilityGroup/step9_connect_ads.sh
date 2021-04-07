# Retrieve external IP address of the primary and secondaries
ip1=$(kubectl get services | grep mssql-primary | cut -c49-63)
ip2=$(kubectl get services | grep mssql-secondary1 | cut -c49-63)
ip3=$(kubectl get services | grep mssql-secondary2 | cut -c49-63)

echo Connect ADS to $ip1, $ip2, $ip3
echo Run the script to create the primary replica and objects 
read -p "Press enter to continue"

# Start Azure Data Studio on the host
azuredatastudio
