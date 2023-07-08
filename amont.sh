#!/bin/bash

log_file="apache_access"  

awk '{print $NF}' "$log_file" | sort | uniq -c
