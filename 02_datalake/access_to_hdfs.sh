# launch docker compose
cd cloudera
docker-compose up

# connect to the container
docker exec -ti cloudera-quickstart-vm-docker_cloudera_hostname_1 /bin/bash


# find where core-xml is
ls -l /etc/hadoop/conf/

-rw-rw-r-- 1 root root  1915 Oct 23  2017 core-site.xml
-rwxr-xr-x 1 root root  1366 Oct  4  2017 hadoop-env.sh
-rwxr-xr-x 1 root root  2890 Oct  4  2017 hadoop-metrics.properties
-rw-rw-r-- 1 root root  3739 Oct 23  2017 hdfs-site.xml
-rwxr-xr-x 1 root root 12601 Oct  4  2017 log4j.properties
-rw-rw-r-- 1 root root  1546 Oct 23  2017 mapred-site.xml
-rwxr-xr-x 1 root root  1104 Oct  4  2017 README
-rwxr-xr-x 1 root root  2375 Oct  4  2017 yarn-site.xml





[...]
<configuration>
  <property>
    <name>fs.defaultFS</name>
    <value>hdfs://quickstart.cloudera:8020</value>
  </property>
[...]