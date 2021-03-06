#!/bin/sh
gcc client.c -o client -lpthread
gcc server.c -o server

# remove previous created fifos

rm *.dat

# open each server and client in new terminal

gnome-terminal -e "bash -c \" ./server; exec bash\""
sleep 1
gnome-terminal --title "client1" -e "bash -c \" ./client c1; exec bash\""
sleep 1
gnome-terminal --title "client2" -e "bash -c \" ./client c2; exec bash\""
sleep 1
gnome-terminal --title "client3" -e "bash -c \" ./client c3; exec bash\""
sleep 1
gnome-terminal --title "client4" -e "bash -c \" ./client c4; exec bash\""

exit
