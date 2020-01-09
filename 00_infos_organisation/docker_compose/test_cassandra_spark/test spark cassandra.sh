docker-compose up -d
docker-compose ps 

# launch docker 
docker exec -ti spark_container /bin/bash 

# retrieve token
jupyter notebook list
