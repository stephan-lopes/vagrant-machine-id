#!/bin/bash

# Author:		Keven S. Lopes
# Version:		1.0
# E-mail:		<kstephanl1908@gmail.com>
# Bash Version:		5.0.17
# Code Name:		Vagrant Machine ID
# Description:		Returns an ID value specified in the code, referring to the specified Vagrant machine. Useful when using vagrant commands like "vagrant up"
# Project:		<https://github.com/stephan-lopes/vagrant-machine-id.git>
# License:		GPLv3
# Dependencies:		vagrant


function machine-list() {
	case $1 in
		rustcompiler) MACHINE=$1 ;;
		*) MACHINE="" ;;
	esac
	echo $MACHINE
}

# Verifica se não está sendo executado em um subshell
if [[ "$$" == "$BASHPID" ]]; then
	if [[ $(machine-list $1) != "" ]]; then
		vagrant global-status | grep $(machine-list $1) | awk '{print $1}';
	fi
fi





