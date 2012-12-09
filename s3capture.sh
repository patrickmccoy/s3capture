#!/bin/bash

# Configurables
FILE=/tmp/imagesnap.jpg
BUCKET="s3://webcam.swixr.com/dev"

# set the timezone to UTC
export TZ=UTC

# Date stuff
YEAR=`date '+%Y'`
MONTH=`date '+%m'`
DAY=`date '+%d'`

# take the photo and save it to /tmp/imagesnap.jpg
/usr/local/bin/imagesnap $FILE

# upload the image to S3
/usr/local/bin/s3cmd put $FILE "$BUCKET/$YEAR/$MONTH/$DAY/`date '+%Y-%m-%dT%H:%M:%SZ'`.jpg"

# delete the image from /tmp
rm $FILE
