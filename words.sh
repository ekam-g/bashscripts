#!/bin/bash

input_word=$1

if [[ ${#input_word} -ne 5 ]]; then
    echo "Input word should be 5 letters long."
    exit 1
fi

combinations=$(words -5 <(printf "%s\n" {a..z}) | tr -d "'")

matching_words=""
for combination in $combinations; do
    if [[ $combination =~ ^${input_word//_/[a-z]}$ ]]; then
        matching_words+="$combination "
    fi
done

echo "Matching words for $input_word:"
echo "$matching_words"
