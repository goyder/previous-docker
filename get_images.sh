INPUT=https://winworldpc.com/download/0c6a74c3-8e53-3f11-c3a4-c2a90f7054ef/from/c3ae6ee2-8099-713d-3411-c3a6e280947e
OUTPUT_FILE=NS33.7z
OUTPUT_DIR_RAW_IMAGES=raw_images
OUTPUT_DIR_IMAGES=images
OUTPUT_FILEPATH=$OUTPUT_DIR_RAW_IMAGES/$OUTPUT_FILE

sudo apt-get install -y p7zip-full

mkdir -p $OUTPUT_DIR_RAW_IMAGES
if [ ! -f "$OUTPUT_FILEPATH" ]; then
	wget $INPUT -O $OUTPUT_FILEPATH
fi

7zr e $OUTPUT_FILEPATH -o$OUTPUT_DIR_RAW_IMAGES NS33_2GB.dd -r 

# And now sync the actual images
mkdir -p $OUTPUT_DIR_IAMGES
aws s3 sync s3://previous-emulator-949012111517/images/ $OUTPUT_DIR_IMAGES/
