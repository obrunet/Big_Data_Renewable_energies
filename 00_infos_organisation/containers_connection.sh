# get ip or the running container 
docker inspect <__id___> --format '{{ .NetworkSettings.IPAddress }}' "$@"


# list all interfaces - see all connections // ipconfig on windows
ifconfig
# if ifconfig is not installed -> inet addr = internal ip @, HWaddr = mac @
ip a
# 

# Start the Alpine container and drop into a Shell prompt.
docker container run --rm -it alpine sh

# Install the ping utility.
apk update && apk add iputils


# Ping your local network IP address (replace my IP address with yours).
ping 192.168.1.3
ping 172.17.0.2

# You should see this output (hit CTRL+C to stop it):
PING 192.168.1.3 (192.168.1.3) 56(84) bytes of data.
64 bytes from 192.168.1.3: icmp_seq=1 ttl=37 time=0.539 ms
64 bytes from 192.168.1.3: icmp_seq=2 ttl=37 time=0.417 ms
64 bytes from 192.168.1.3: icmp_seq=3 ttl=37 time=0.661 ms

# by default all tools are not installed in docker images
apt-get update
apt-get install iputils-ping 

# view Docker networks, run:
docker network ls

# get further details on networks, run:
docker network inspect <__id___>



# sources 
https://www.linode.com/docs/applications/containers/docker-container-communication/#example-node-js-application
https://docs.docker.com/engine/reference/run/
https://blog.oddbit.com/post/2014-08-11-four-ways-to-connect-a-docker/
https://docs.docker.com/engine/reference/commandline/network_connect/


----------------------------------------------------------------------------------------

# launch shell as root
docker exec -u 0 -it my_container_id_with_jupyter_spark bash

# because there is no package cache in the image, you need to run:
apt-get update

# then https://stackoverflow.com/questions/27273412/cannot-install-packages-inside-docker-ubuntu-image
apt-get install curl
apt-get install iputils-ping
apt insall nmap

# test
ping 127.0.0.1
nmap -p 8020 cloudera_hostname



https://community.cloudera.com/t5/Community-Articles/Accessing-Hbase-tables-and-querying-on-Dataframes-using/ta-p/247309
https://sparkbyexamples.com/spark/writing-spark-dataframe-to-hbase-table-hortonworks/
https://sparkbyexamples.com/spark/create-spark-dataframe-from-hbase-using-hortonworks/
https://github.com/IBM/sparksql-for-hbase
https://spark.apache.org/docs/latest/sql-data-sources-parquet.html
https://www.vidyasource.com/blog/vidya/technology/lighting-a-spark-with-hbase-scala-hadoop/
https://forum.huawei.com/enterprise/en/reading-data-from-hbase-and-writing-data-to-hbase-spark-case-6/thread/469231-899
https://github.com/hortonworks-spark/shc
https://diogoalexandrefranco.github.io/interacting-with-hbase-from-pyspark/

