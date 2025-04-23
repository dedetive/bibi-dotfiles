#!/bin/bash

STYLE_DIR="./styles"
STYLE_MAIN="$STYLE_DIR/main.style"
STYLE_SUCCESS="$STYLE_DIR/success.style"

# Real swaylock, requires passwords
if swaylock --config $STYLE_MAIN; then

    # If following is executed, the password has already been accepted
    swaylock --config $STYLE_SUCCESS

    # Delay until it goes away
    sleep 1.8

    # Kill only the most recent swaylock daemon instance safely
    pid=$(pgrep -n -f "swaylock.*daemonize")
    if [ -n "$pid" ]; then
      kill -USR1 "$pid"
    fi
fi
