#!/bin/bash
#Script 8: Create group

    read -p "\nEnter group name: " groupname

		if grep -q "^$groupname:" /etc/group; then
		    echo "\nGroup named $groupname alredy exists.\n"
		    exit 1
		fi

		groupadd "$groupname"
		echo "\nGroup $groupname was successfully created.\n"
