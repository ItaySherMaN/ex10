#!/bin/bash

awk 'END{print NR}' aliceinwonderland.txt

awk '/Alice/ {print}' aliceinwonderland.txt | wc -l

awk '{ for (i=2; i<=NF-1; i++) {if ($i=="Alice") count++}} END{print count}' aliceinwonderland.txt

awk '{print (length($0)), $0 }' aliceinwonderland.txt | sort -nr | head -1 | cut -d " " -f 2-

awk '{print tolower($0)}' aliceinwonderland.txt |awk '{gsub(/[^[:alnum:]]/, " "); for (i=1;i<=NF;i++) {count[$i]++}} END{for (word in count) {print count[word], word}}' | sort -nr | head -5 | cut -d " " -f 2-
