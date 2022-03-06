docker run \
--rm \
-it \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/.Xauthority:/home/ubuntu/.Xauthority \
-e DISPLAY=$DISPLAY \
--network host \
--name gnuplot \
gnuplot 
