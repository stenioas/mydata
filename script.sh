#!bin/bash

wget https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE1OTIxNjUyNDciLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjAzNDMxNDY3YjE0ZjM0YzRkZTQwZTA3MzdjZWJkZmUzZWJhMTJjMDEwYjE4ZWYwOTU5NmFiYzI4NzM3OWUwZmIzNTE1OTc4NWY5OTlhMjliYjQxMzVhYmQ3MDNhMThjM2UyOTU0NGU0MGJhYzY4ODE3ODc1NTEwZWZmNTE4Y2Y5IiwidCI6MTU5Mjc3MjY4OCwic3RmcCI6IjhiZjkwYmQ5YzhjNzc4ZDc4MjE0MzNlMmQxMGE1NGQ3Iiwic3RpcCI6IjE5MS40NS4xMDguMTMzIn0.dHi1w975kOqwo-taLYLelr7JwSRSxyvTvv2xzlKTRm4/Sweet-Dark.tar.xz

tar -xvf Sweet-Dark.tar.xz Sweet-Dark

if [ ! -d "/home/$USER/.themes" ]; then
    mkdir /home/$USER/.themes
fi

cp -r Sweet-Dark /home/$USER/.themes
rm -r Sweet-Dark
rm Sweet-Dark.tar.xz

sudo pacman -Sy --needed papirus-icon-theme

xfconf-query -c xfwm4 -p /general/theme -s Sweet-Dark
xfconf-query -c xsettings -p /Net/ThemeName -s Sweet-Dark
xfconf-query -c xsettings -p /Net/IconThemeName -s Papirus-Dark