#!/bin/bash
#REGISTRY="192.168.61.202:5500"
#REPOSITORY="awesome-project-of-awesomeness"


#LATEST="`wget -qO- http://$REGISTRY/v1/repositories/$REPOSITORY/tags`"
LATEST="`wget -qO- http://registry.hub.docker.com/v1/repositories/ubuntu/tags`"
echo $LATEST
LATEST=`echo $LATEST | sed "s/{//g" | sed "s/}//g" | sed "s/\"//g" | cut -d ' ' -f2`
echo $LATEST
#RUNNING=`docker inspect "$REGISTRY/$REPOSITORY" | grep Id | sed "s/\"//g" | sed "s/,//g" |  tr -s ' ' | cut -d ' ' -f3`
#RUNNING=`docker inspect "ubuntu" | grep Id | sed "s/\"//g" | sed "s/,//g" |  tr -s ' ' | cut -d ' ' -f3`
#if [ "$RUNNING" == "$LATEST" ];then
    #echo "same, do nothing"
#else
    #echo "update!"
    #echo "$RUNNING != $LATEST"
#fi
