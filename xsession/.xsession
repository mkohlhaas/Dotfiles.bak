#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#

# /bin/bash --login -i ~/.xinitrc

setxkbmap eu &
setxkbmap -option ctrl:nocaps &
nitrogen --restore &
