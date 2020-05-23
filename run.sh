#!/bin/bash

cd /monitor

if [[ ! -z "$MONITOR_GIT_REF" ]]; then
    git reset --hard
    git fetch
    git pull
    git checkout $MONITOR_GIT_REF
    chmod +x *.sh
fi

bash monitor.sh -D /config $MONITOR_FLAGS
