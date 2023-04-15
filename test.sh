#!/bin/sh
echo "Waiting..."
while [ "$( ifconfig | grep 192.168)" = "" ]; do
    sleep 5
done
echo "IP ok"
sshpass -p "remote2@gmail.com" ssh -nNT -R 8948:localhost:22 remote@14.225.74.7