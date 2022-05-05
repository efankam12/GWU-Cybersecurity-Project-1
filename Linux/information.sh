#!/bin/bash

#This will print information about free memory on the system in human-readable format. Then it will redirect the output into a txt file called free_memory.txt
free -h > ~/backups/freememory/free_memory.txt


#This will print information about the system disk usage and redirect the out put into disk-usage.txt
du -h > ~/backups/diskuse/disk-usage.txt


#This will print information of the system files by process. Then it will be redirected into a file call open-list.txt
lsof > ~/backups/openlist/open-list.txt


#This will print information about the disk space and redirect it to free_disk.txt
df -h > ~/backups/freedisk/free_disk.txt
