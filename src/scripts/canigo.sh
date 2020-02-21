#!/bin/sh

function try() {
	if [ $1 != $2 ]
	then
		echo "$3\tfail"
		exit 1
	fi
}

try `docker ps -a | wc -l` 1 "no containers running"
try `ps aux | grep -w Z | wc -l` 2 "no zombies"
try `lsof -nP -i tcp | grep node | wc -l` 0 "no nodejs servers running"
