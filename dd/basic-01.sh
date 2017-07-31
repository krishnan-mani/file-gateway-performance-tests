#!/usr/bin/env bash
FILE_MOUNT_POINT="$1"
FILE_NAME="$2"
echo "Writing to ${FILE_MOUNT_POINT}/${FILE_NAME}"
dd if=/dev/zero of=${FILE_MOUNT_POINT}/${FILE_NAME} bs=1G count=1 oflag=direct
