# s3capture

Capture an image from your mac and upload it to Amazon S3

## Requirements

The following requirements can be installed with homebrew:

    $ brew install imagesnap s3cmd

 * [imagesnap](http://iharder.sourceforge.net/current/macosx/imagesnap/)
 * [s3cmd](http://s3tools.org/s3cmd)

You will have to run `s3cmd --configure` to setup your AWS Access Key and Secret in order for the uploading to work

## Usage

Just run `./s3capture.sh` from your shell to capture and upload an image to the S3 bucket you designate at the top of the script.