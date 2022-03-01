# automatic_database_testing
Robotic process automation of database postgresql with robot framework

## Make running? 

### Docker compose to postgres database server 
  docker run 
    --name myPostgresDb 
    -p 5455:5432 
    -e POSTGRES_USER=postgresUser 
    -e POSTGRES_PASSWORD=postgresPW 
    -e POSTGRES_DB=postgresDB 
    -d 
    postgres
### Docker compose to pgadmin4
  docker run -p 80:80 --name cael-pgadmin dpage/pgadmin4 -e 'PGADMIN_DEAFULT_EMAIL=admin@admin.com' -e 'PGADMIN_DEFAULT_PASSWORD=1234'
### Docker compose to robot framework
