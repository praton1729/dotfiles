#!/bin/bash

#ICON=$HOME/.xlock/key.png

ICON=$HOME/.i3/Locks/Minato_9_edited.png
TMPBG=/tmp/screen.png
SCALED_LOCK=/tmp/scaled_lock.png

scrot /tmp/screen.png

#convert $ICON -scale 60% -rotate 90 $SCALED_LOCK
 
convert $ICON -scale 100% $SCALED_LOCK

convert $TMPBG -scale 10% -scale 1000% $TMPBG

convert $TMPBG $SCALED_LOCK -gravity center -composite -matte $TMPBG

i3lock -u -i $TMPBG
