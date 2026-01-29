#!/bin/bash

SPACE_ITEM=0xff521E92
ACTIVE_BG=0xff9252d5

echo "called with $1"
echo "$FOCUSED_WORKSPACE"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set "$NAME" \
    background.drawing=on \
    background.color="$ACTIVE_BG"
else
  sketchybar --set "$NAME" \
    background.drawing=on \
    background.color="$SPACE_ITEM"
fi
