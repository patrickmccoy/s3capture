#!/bin/bash

FILE=/tmp/imagesnap.jpg

# take the photo and save it to /tmp/imagesnap.jpg
/usr/local/bin/imagesnap $FILE

# set the timezone to UTC
export TZ=UTC

# upload the image to S3
/usr/local/bin/s3cmd put $FILE "s3://webcam.swixr.com/dev/`date '+%y-%m-%dT%H:%M:%SZ'`.jpg"

# delete the image from /tmp
rm $FILE
