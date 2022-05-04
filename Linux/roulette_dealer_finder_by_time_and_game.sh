#!/bin/bash/

cat $1_Dealer_schedule | awk -F" " '{print $1,$2,$3,$4,$5,$6,$7,$8}' | grep "$2"
