# automatic_database_testing
Robotic process automation of database postgresql with robot framework

## Make running? 

### Requirements
  - Python
  - Postgres
  - PGAdmin4 (optional)
  - psycopg
  - robot framework
  - robotframework-databaselibrary
  - robotframework-postgresqldb

### Docker compose to postgres database server 
  docker run 
    --name cael-psql 
    -p 5455:5432 
    -e POSTGRES_USER=postgresUser 
    -e POSTGRES_PASSWORD=postgresPW 
    -e POSTGRES_DB=postgresDB 
    -d 
    postgres
### Docker conainer to pgadmin4
  
  docker pull dpage/pgadmin4 
  
  docker run -p 80:80 \
  -e "PGADMIN_DEFAULT_EMAIL=user@domain.com" \
  -e "PGADMIN_DEFAULT_PASSWORD=SuperSecret" \
  -d dpage/pgadmin4
  
  ```bash
  # while build failed with this problem:
  # Cause: delight/rhinosandox/RhinoSandboxes
  # Try run the command in terminal:

  gradlew clean assemble -stacktrace
  ```
  
### Docker compose to robot framework
