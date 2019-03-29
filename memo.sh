#!/usr/bin/env zsh

echo "\uF85A $(awk '{print $3}' <(sed -u '2!d' <(free -h)))B "
