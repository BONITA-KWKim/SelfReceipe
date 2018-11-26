#!bin/bash/

docker cp ./self_receipe selfreceipe_djangoapp_1:/opt/services/djangoapp/src

docker restart selfreceipe_djangoapp_1
