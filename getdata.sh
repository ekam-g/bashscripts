#!/bin/bash

curl -O https://mlh-production-engineering.s3.us.east-2.amazonaws.com/apache_logs/apache_access.tar.gz

tar -xzf apache_access.tar.gz 

rm apache_access.tar.gz 