#!/bin/bash

for i in {1..100}
do
    colonies function exec --func sleep --args 5000 --targettype sleep 
done
