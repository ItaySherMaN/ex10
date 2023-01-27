# /bin/bash
#a.

awk 'END {print NR}' aliceinwonderland.txt

#b

awk '/Alice/' aliceinwonderland.txt | awk ' END { print NR}'

#c

awk '{for(i=1; i<=NF; i++) if ($i=="Alice") {count++}} END {print "the word Alice shows up ",count," of times"}' aliceinwonderland.txt

#d

awk '{if (length($0) > max) max = length($0)} END {print "the largest row has " max " letters"}' aliceinwonderland.txt


#e

grep '\S' aliceinwonderland.txt | awk '{for(i=1; i<=NF; i++) {a[$i]++}} END {for (k in a) print a[k], k}' | sort -rn | head -5
