#!/usr/bin/env bash
#this is a simple bash script intended for use in backing up a directory with tar and storing the compressed file in a different directory.
#intended to be ran as a cron task.




#variable for the directory of the current world
current_world_dir=./copyable_world
#variable for the directory to receive the compressed backups
copied_worlds_dir=./copied_worlds

#date variable saved as YYYY-MM-DD
ymd=$(date +%F)

if [ -f $copied_world_dir/$ymd.tar.gz ]; then

	echo "File $ymd.tar.gz Already Exists"
else

	tar -zcvf $copied_world_dir/$ymd.tar.gz copyable_world
	echo "File $ymd.tar.gz Created!"

fi
