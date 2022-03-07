docker run \
	--rm \
	-it \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $HOME/.Xauthority:/root/.Xauthority \
	--network host \
	-e DISPLAY=$DISPLAY \
	--name previous \
	previous

