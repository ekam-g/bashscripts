#!/bin/bash

log_file="apache_access"  

ip_addresses=$(awk '{match($0, /[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/); if (RSTART) print substr($0, RSTART, RLENGTH)}' "$log_file")

echo "$ip_addresses"
