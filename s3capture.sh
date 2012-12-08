#!/bin/bash

FILE=/tmp/imagesnap.jpg
BUCKET="s3://webcam.swixr.com/dev"

# take the photo and save it to /tmp/imagesnap.jpg
/usr/local/bin/imagesnap $FILE

# set the timezone to UTC
export TZ=UTC

# upload the image to S3
/usr/local/bin/s3cmd put $FILE "$BUCKET/`date '+%y-%m-%dT%H:%M:%SZ'`.jpg"

# delete the image from /tmp
rm $FILE
