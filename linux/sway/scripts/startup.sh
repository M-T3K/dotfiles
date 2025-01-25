#!/bin/bash

# @hack: If albert is already running at start, then it will open things
# inside the desktop and not inside sway. Therefore, we restart it under 
# swaywm.
if pgrep -x "albert" > /dev/null; then
    echo "Albert is running. Killing it..."
    killall "albert"
fi


while ! pgrep -x "albert" >/dev/null; do
    exec albert &> /dev/null & 
    sleep 30
done

