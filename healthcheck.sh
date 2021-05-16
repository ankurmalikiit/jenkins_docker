#!/bin/bash
echo "Checking http status"
response=$(curl --write-out %{http_code} --silent --output /dev/null http://54.252.170.186:8093/)

if [ "$response" == "200" ]

then
echo "Status is $response and Nginx application is up"

else 
echo "Nxinx webapp is down"

fi
