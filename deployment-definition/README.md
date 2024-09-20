### Deployment File
This is the main component, it will host our application and run any computing required
- In metadata section, we should define its name, the namespace it belong to and the labels
- In spec section
    - We define the replicas variable which indicate the number of Pod we want to keep running inside K8s 
    - A template which is the definition of docker image we want to run inside that Pod -> we will define the image as well as additional configuration 
        - For metadata, the critical part is **labels** because it will be used later for identifying by deployment and service to map with
        - env section, it will map variable inside the ConfigMap file and Secret file that we define before 
        - volumeMount, it will map the directory inside the container **/opt/sonarqube/data** to persistent Volume 
