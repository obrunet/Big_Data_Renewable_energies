# ------------------------ For the first time ------------------------

# run images with port mapping, if you've not got the file it'll pull it from dockerhub while launching the run
docker run --name=cloudera --hostname=quickstart.cloudera --cpus=4 -m=8g --privileged=true -t -i -v `pwd`:/src --publish-all=true -p 8888:8888 -p 7180:7180 cloudera/quickstart /usr/bin/docker-quickstart






# ------------------------ Everyday ------------------------

# run latest saved images - change REPOSITORY accordingly
docker run --name=cloudera --hostname=quickstart.cloudera --cpus=4 -m=8g --privileged=true -t -i -v `pwd`:/src --publish-all=true -p 8888:8888 -p 7180:7180 REPOSITORY/INFOS /usr/bin/docker-quickstart

# --> DO YOUR WORK ! :)

# before exiting docker (otherwise you'll loose everything you've done so far), create an image:
docker commit  container_id  REPOSITORY/INFOS:version3		# version = TAG

# create an archive 
docker save myimage:latest | gzip > myimage_latest.tar.gz






# ------------------------ Extras ------------------------

# connect to the web ui
http://localhost:8888

# if you exit docker and want to re-run it, first remove the container then relaunch the image
docker rm $(docker ps -a -q) --force


# to launch another shell
sudo docker exec -ti cloudera bash


