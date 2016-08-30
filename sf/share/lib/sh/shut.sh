#!/bin/sh
if [ -r ./pid ]; then
    touch .killscript
    kill -1 `cat ./pid`
fi

