#!/bin/bash
#

#if [ ! -z "$var" ]; then 
if [ ! -z "$ADDRESS" ]; then
	sed -i "s/<address>/$ADDRESS/g" /home/private-bower/bowerConfig.json
fi

private-bower --config /home/private-bower/bowerConfig.json
