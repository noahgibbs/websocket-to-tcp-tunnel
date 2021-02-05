#!/bin/sh

HOME=/usr/local/websocket-to-tcp-tunnel
PID=`cat $HOME/tunnel.pid`

if [ -f "$HOME/tunnel.pid" ] && [ -e /proc/$PID ]; then
    kill -9 `cat $HOME/tunnel.pid`
fi
