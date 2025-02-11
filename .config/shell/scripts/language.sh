#!/usr/bin/env bash

if [ ! "$XDG_SESSION_TYPE" = "tty" ]   # if this is a gui session (not tty)
then
    export INPUT_METHOD=fcitx
    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export XMODIFIERS=@im=fcitx
fi
