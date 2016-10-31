#!/usr/bin/env bash

BUTTON_NOW=$1
LID_NOW=$2
BUTTON_PREV=$3
LID_PREV=$4

case "$BUTTON_NOW $LID_NOW $BUTTON_PREV $LID_PREV" in
    "0 0"*)
        # Button not being pressed, lid shut
        if pgrep play; then pkill play; fi
        ;;

    "1 0"*)
        # Button being pressed, lid shut?  Weird.
        ;;

    "1 1"*)
        # Button being pressed, lid open
        if pgrep play; then pkill play; fi
        play -q -v 5 ~/bonkers/sound.mp3 &
        ;;

    "0 1 0 0")
        # Button not pressed, lid open
        # Previously button was not pressed, lid was closed
        if pgrep play; then pkill play; fi
        play -q -v 5 ~/bonkers/drums.mp3 &
        ;;

    "0 1 1 0")
        # Button not pressed, lid open
        # Previously button was pressed, lid was closed
        ;;

    "0 1 1 1")
        # Button not pressed, lid open
        # Previously button was pressed, lid was open
        ;;

    *)
        ;;
esac
