#a
awk 'END {print NR}' aliceinwonderland.txt

#b
awk '/Alice/ {count++} END {print count}' aliceinwonderland.txt

#c
awk '{for (i = 2; i < NF; i++) {if ($i == "Alice"){count++}}}END { print count }' aliceinwonderland.txt

#d
awk '{ if (length($0) > max) {max = length($0); row = $0; num = NR; }} END {print row}' aliceinwonderland.txt 

#e
cat aliceinwonderland.txt | tr -d [:punct:] | awk '{for(i=1;i<=NF;i++) {count[$i]++;}} END {for(i in count) {print count[i], i}}'  | sort -r -n | grep [A-Za-z] | head -5
# i decided to print the 6th most frequent words becuse the 2th one is space (" ")