#!/bin/bash 

$VARIABLE_PATH="./variable-storage/"
$SERVICE_PATH="./service-definition/"
$DEPLOYMENT_PATH="./deployment-definition/"
$PERSISTENT_PATH="./persistent_volume/"
$PERSISTENT_CLAIM_PATH="./persistent_volume_claim/"

auto_deploy() {
    find $1 -type f | while read -r file; do 
         
        echo "Processing different file: $file"
        kubectl apply -f $file
    done
}


auto_deploy $VARIABLE_PATH
auto_deploy $PERSISTENT_PATH
auto_deploy $PERSISTENT_CLAIM_PATH
auto_deploy $SERVICE_PATH
auto_deploy $DEPLOYMENT_PATH
