#!/usr/bin/env bash

[[ $(mpc status) =~ repeat:[[:space:]](.*)[[:space:]]random ]] && repeat=${BASH_REMATCH[1]}
[[ $(mpc status) =~ single:[[:space:]](.*)[[:space:]]consume ]] && single=${BASH_REMATCH[1]}

case $repeat$single in
    *on*on*) result_icon="" ;;
    *on*off*) result_icon="" ;;
esac

echo "" $result_icon
