#!/bin/bash
#Script 8: Create group, made by Tomasz Kupczyk

    read -p "Enter group name: " groupname

		if grep -q "^$groupname:" /etc/group; then
		    echo "Group named $groupname alredy exists."
		    exit 1
		fi

		groupadd "$groupname"
		echo "Group $groupname was successfully created."
