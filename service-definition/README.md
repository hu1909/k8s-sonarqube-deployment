### Service File 
- For metadata section: We define the same with other components, we should have a name, namespace as well as the labels 
- For spec section of service
    - For the ports: we need to indicate the port of service as well as the port of a Pod to make a connection 
        - targetPort: will be the port of Pods that we want to map 
        - port: indicate the port of the service 
    - For the selector: this section is crutial as service will use this selector to map to the correct Pod -> in this case, the selector will have the same properties with the Pod we want to map which is 'app: sonarqube-database'