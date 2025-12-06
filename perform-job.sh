#!/bin/bash

# Define the spool directory
SPOOL_DIR="$(pwd)/jobs"
JOB_ID=$IPP_JOB_ID
CONTENT_TYPE=$CONTENT_TYPE
FILE_PATH=$1

# Get file extension
FILE_EXTENSION="${1##*.}"

# Get file hash (SHA256)
FILE_HASH=$(sha256sum "$FILE_PATH" | awk '{print $1}')

OUTPUT_FILE="$SPOOL_DIR/job-$JOB_ID-$FILE_HASH.$FILE_EXTENSION"

mkdir -p $SPOOL_DIR

# Read from standard input and save the file
cat "$FILE_PATH" > "$OUTPUT_FILE"

# Saved in prn file
echo "INFO: Saved job $JOB_ID to $OUTPUT_FILE"
echo "INFO: File extension: $FILE_EXTENSION"
echo "INFO: File hash (SHA256): $FILE_HASH"