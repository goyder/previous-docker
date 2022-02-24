docker run \
	-p 5900:5900 \
	-e HOME=/ \
	-t \
	previousvnc \
	x11vnc \
	-forever \
	-usepw \
	-create
