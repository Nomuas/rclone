#!/usr/bin/env bash

if [ -f /config/rclone.conf ]; then
    mkdir -p ~/.config/rclone
    cp /config/rclone.conf ~/.config/rclone/
fi

if [ "$1" == "" ]; then
    exec rclone --help
else
    exec "$@"
fi
