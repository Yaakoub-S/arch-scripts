#!/bin/sh

# check_root: exit if not running as root 
check_root() {
    if [ "$(id -u)" -ne 0 ]; then
        echo "Error: must be run as root" >&2
        exit 1
    fi
}
