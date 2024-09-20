### Config Map File
This file defines the variables that we will use to define the container environment. We have 2 main parts: SonarQube and Its database (PostgreSQL)

1. SonarQube ConfigMap 
- Metadata: we should define its name as well as the namespace it belong to
- Variable
    - It define the JDBC_URL to connect to Postgres 
    - DB username 
    - Database Driver 
    - Java variable environment   
2. Postgres ConfigMap -> We define as the same with the Config Map for Sonarqube but Postgres will define variable for its username and its database name


### Secret File 
Before input the password into Secret file, we must do a conversion step first by running this command 
`echo -n "password" | base64 `

After that we copy that encode password and put it inside Secret definition file as a variable
