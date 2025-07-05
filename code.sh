#!/bin/bash
dpkg -l apache2 &> /dev/null
if [ $? -eq 0 ]; then
	echo "Already Installed"
else
	echo "Not Installed"
	echo "Attempting to install again"
	sudo apt-get update &> /dev/null
	sudo apt-get install apache2 -y &> /dev/null
	if [ $? -eq 0 ]; then
		echo "installed successfully"
	else
		echo " installed failed"
	fi
fi

