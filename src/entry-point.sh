#!/bin/bash


if [ $# -eq 0 ] 
then
    export PORT=8080
else 
    export PORT=$1
fi
npm start
