#!/bin/bash

log_file="apache_access" 

awk '{print $NF}' "$log_file" | sort -nr | head -n 5