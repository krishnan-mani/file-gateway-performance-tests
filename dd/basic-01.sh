#!/usr/bin/env bash

SCRIPT_NAME="$0"

if [ $# -ne 4 ]
then
    echo "Error: missing argument(s)"
    echo "Usage: ${SCRIPT_NAME} mount-point file-name-prefix block-size count"
    exit 1
fi

MOUNT_POINT="$1"
FILE_NAME_PREFIX="$2"
BLOCK_SIZE="$3"
COUNT="$4"

FULL_FILE_NAME="${MOUNT_POINT}/${FILE_NAME_PREFIX}.${BLOCK_SIZE}.${COUNT}"

echo "Writing to ${FULL_FILE_NAME}"
dd if=/dev/zero of=${FULL_FILE_NAME} bs=${BLOCK_SIZE} count=${COUNT} oflag=direct
