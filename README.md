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
  ```bash
  # docker run 
  #   --name cael-psql 
  #   -p 5455:5432 
  #   -e POSTGRES_USER=postgresUser 
  #   -e POSTGRES_PASSWORD=postgresPW 
  #   -e POSTGRES_DB=postgresDB 
  #   -d 
  #   postgres
  ```
### Docker conainer to pgadmin4
  ```bash
  # docker pull dpage/pgadmin4 
  ```
  ```bash
  # docker run -p 80:80 \
  # -e "PGADMIN_DEFAULT_EMAIL=admin@admin.com" \
  # -e "PGADMIN_DEFAULT_PASSWORD=1234" \
  # -d dpage/pgadmin4
  ```
  
### Docker compose to robot framework
