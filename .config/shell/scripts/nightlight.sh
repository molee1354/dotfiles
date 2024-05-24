#!/bin/bash

if [[ -z $(ps -e | grep 'redshift') ]]; then
    redshift -P -O 3500
    # redshift -l 43.15:77.61
    # redshift -l 37.60:127.00
else
    pkill -SIGINT 'redshift'
fi
