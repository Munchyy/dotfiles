#!/bin/bash
NEXT=$(echo `xbacklight -get` - 10 | bc)
if [ 1 -eq "$(echo "${NEXT} < 0.5" | bc)" ]
then
  xbacklight -set 0.5
else
  xbacklight -set $NEXT
fi

