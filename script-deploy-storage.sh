#!/bin/bash 

$VARIABLE_PATH="K8s/sonarqube-deployment/variable-storage"
$SERVICE_PATH="K8s/sonarqube-deployment/service-definition"
$DEPLOYMENT_PATH="K8s/sonarqube-deployment/deployment-definition/"
$PERSISTENT_PATH="K8s/sonarqube-deployment/persistent_volume/"
$PERSISTENT_CLAIM_PATH="K8s/sonarqube-deployment/persistent_volume_claim/"

auto_deploy() {
    find "$1" -type f | while read -r file; do 
        echo "Processing different file"
        kubectl apply -f $file
    done
}


auto_deploy $VARIABLE_PATH
auto_deploy $PERSISTENT_PATH
auto_deploy $PERSISTENT_CLAIM_PATH
auto_deploy $SERVICE_PATH
auto_deploy $DEPLOYMENT_PATH