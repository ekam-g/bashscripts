#!/bin/bash

json=$(curl -s https://api.coincap.io/v2/assets)

rank_name=$(echo "$json" |  jq -r '.data[:10] | map("\(.rank) \(.name)") | .[]')

echo "$rank_name"