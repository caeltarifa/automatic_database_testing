# automatic_database_testing
Robotic process automation of database postgresql with robot framework

## Make running? 

### Requirements
  
  - Docker
  - Python
  - Postgres
  - PGAdmin4 (optional)
  - psycopg
  - robot framework
  - robotframework-databaselibrary
  - robotframework-postgresqldb

### Method 1
#### Docker container to postgres database server 
  ```bash
  # docker pull postgres 
  ```  
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
#### Docker conainer to pgadmin4
  ```bash
  # docker pull dpage/pgadmin4 
  ```
  ```bash
  # docker run -p 80:80 \
  # -e "PGADMIN_DEFAULT_EMAIL=admin@admin.com" \
  # -e "PGADMIN_DEFAULT_PASSWORD=1234" \
  # -d dpage/pgadmin4
  ```
### Method 2
```bash
  # cd server_compose
  # docker compose up
  ```
### Docker container for robot framework
 
```bash
  # cd robot-container
  # docker build -f ./Dockerfile -t robot .
  ```
  
  ```bash
  # docker-compose up 
  ```
  
