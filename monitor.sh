#!/bin/bash
SERVISE_NAME=$1

if [ -z "$1" ];
then
	echo "Укажите имя службы"
	exit 1
fi

if systemctl is-active --quiet "$SERVISE_NAME";
then
	echo "служба $SERVISE_NAME работает"
else 
	echo "служба $SERVISE_NAME не работает"
fi	
