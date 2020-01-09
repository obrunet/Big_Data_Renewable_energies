Could not connect to quickstart.cloudera:21050 (code THRIFTTRANSPORT): TTransportException('Could not connect to quickstart.cloudera:21050',)


https://community.cloudera.com/t5/Support-Questions/tutorial-exercise-2-could-not-connect-to-quickstart-cloudera/td-p/31723
restart the following services in this order, (if the impala-state-store service fails for some reason, impala-server will also fail).
impala-catalog
impala-state-store
impala-server



So for example, 'sudo service impala-state-store status', so see if that service is running, and if it's not, try 
'sudo service impala-state-store restart' and 'sudo service impala-server restart' to get things running again. If you continue to have issues, have a look at the logs in /var/log/impala for any errors that indicate why they're not starting.

sudo service impala-catalog restart
sudo service impala-state-store restart
sudo service impala-server restart


Enter the command to show currently running services:
ls /etc/init.d




# ---------------------------------------------------------------------------------------------------

AnalysisException: This Impala daemon is not ready to accept user requests. Status: Waiting for catalog update from the StateStore.
# https://community.cloudera.com/t5/Support-Questions/Status-Waiting-for-catalog-update-from-the-StateStore/td-p/39655



 ---> SOLUTION <---
sudo /etc/init.d/hive-metastore start
sudo /etc/init.d/impala-state-store start
sudo /etc/init.d/impala-catalog start
sudo /etc/init.d/impala-server start 



# --------------------------------------------------- Connection between 2 containers WORK in PROGRESS ------------------------------------------------

ping cloudera_hostname:60030
!ping http://cloudera_hostname:60030
!sudo apt install iputils-ping

https://github.com/dajobe/hbase-docker
https://github.com/mathsigit/hbase-on-docker             <--------