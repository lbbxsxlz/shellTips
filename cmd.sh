#!/bin/bash

command -v docker
if [ $? -ne 0 ]; then
	printf -- "You don\'t seem to have docker installed.\n"
	printf -- 'Exiting with code 127...\n'
fi
