#!/bin/bash

#a
echo 'number of lines:'
cat aliceinwonderland.txt | awk 'END{print NR}'

#b
echo 'number of lines contained the word Alice:'
cat aliceinwonderland.txt | awk '/Alice/ {print NR}' | wc -l

#c
echo 'number of Alice with space before and after:'
awk '{for (i = 2; i <= NF; i++) {if ($i == "Alice") {count++} } } END { print count }' aliceinwonderland.txt
#another way I checked:
#first I ran this function and made sure ' Alice ' appears once in a row
#awk -F ' Alice ' '{print (NF?NF-1:0)}' aliceinwonderland.txt | sort -n | uniq -c
#after I ran this function and the result is the same - 155
#cat aliceinwonderland.txt | awk '/ Alice / {print}' | awk 'END {print NR}'


#d
echo 'the longest line is:'
awk '{ if (length > max) { max = length; longest_line = $0 } } END { print longest_line }' aliceinwonderland.txt 

#e
echo 'top 5 frequency words are:'
cat aliceinwonderland.txt | awk '{print tolower($0)}' | awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+'| sort -k2 -n | tail -5

