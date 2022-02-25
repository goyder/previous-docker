docker run \
	--rm \
	-it \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $HOME/.Xauthority:/root/.Xauthority \
	--privileged \
	-e DISPLAY=unix$DISPLAY \
	--name previous \
	previous
