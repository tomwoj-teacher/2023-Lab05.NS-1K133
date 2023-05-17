#!/bin/bash
#Script 9: Add user to the group, made by Tomasz Kupczyk

    read -p "Enter user name: " username

		if ! id "$username" >/dev/null 2>&1; then
		    echo "\nUser named $username doesn't exists.\n"
		    exit 1
		fi

		read -p "\nEnter group name: " groupname

		if ! grep -q "^$groupname:" /etc/group; then
		    echo "\nGroup named $groupname doesn't exist.\n"
		    exit 1
		fi

		usermod -aG "$groupname" "$username"

		echo "\nUser $username was successfully added to $groupname.\n"
