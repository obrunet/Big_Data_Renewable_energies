# ----------- outside the container ----------- 

# move the dataset folder in volum example
sudo cp -r ../datasets/DIRECTORY ./VOLUME/



# ----------- run the docker image ----------- 

cd cloudera-quickstart-vm-docker/
docker rm $(docker ps -a -q) --force

docker run --name=cloudera --hostname=quickstart.cloudera --cpus=4 -m=8g --privileged=true -t -i -v `pwd`:/src --publish-all=true -p 8888:8888 -p 7180:7180 cloudera/quickstart /usr/bin/docker-quickstart

# if needed
sudo docker exec -ti cloudera bash



# ----------- inside the container ----------- 

# change user
su cloudera

# put all the folder in hdfs 
hdfs dfs -put /src/DIRECTORY/

# change the permissions in order to be able to manipulate files
hdfs dfs -chmod -R 777 ./DIRECTORY

# verify if everything is there with the right permissions, and details
hdfs dfs -ls -h -R



# ----------- with HUE create tables -----------

# login
http://127.0.0.1:8888/accounts/login/?next=/
account = cloudera / pw = cloudera

# add files in the corresponding tables in  *.parquet
create the db
then create the different tables



# ----------- single test with impala ----------- 

# request example
SELECT * FROM table_name
SHOW TABLE STATS db.table_name
DESCR
# https://impala.apache.org/docs/build/html/topics/impala_perf_stats.html
# hdfs dfs -ls /user/hive/warehouse
