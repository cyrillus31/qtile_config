#!/bin/bash


sudo dnf install picom rofi xserver-xephyr nitrogen -y

git clone git@github.com:jluttine/rofi-power-menu.git
cp -r rofi-power-menu ~/.local/bin/ 
