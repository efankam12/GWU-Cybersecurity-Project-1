#!/bin/bash


#This will substitute every "INCORRECT_PASSWORD" with "ACCESS_DENIED" from the file LogA.txt and redirect the out put to access_denied.txt.

sed s/INCORRECT_PASSWORD/ACCESS_DENIED/ LogA.txt > access_denied.txt
awk '{print $4, $6}' access_denied.txt > filtered_logs.txt
