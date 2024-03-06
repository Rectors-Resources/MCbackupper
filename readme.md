# Minecraft backup cron job


## To install

	1. download MCBackupper.sh into your minecraft server directory.
	2. set copyable_world_dir variable to the name of the world directory
	3. set copied_worlds_dir variable to point to the directory you would like to save backups to.
	4. use ```crontab -e``` to open your list of cron jobs.
	5. use keys 1-5 to select your text editor.
	6. add ```00 00 * * * ~/path/to/server``` to your cronjobs file to execute the script once a day. 
	7. save the cronjobs file.

The backup script should now run at midnight everyday
