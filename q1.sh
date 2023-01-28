#a
awk 'END {print NR}' aliceinwonderland.txt 

#b
awk '/Alice/ {count++} END {print count}' aliceinwonderland.txt

#c
awk '/Alice/ {count++} END {print count}' aliceinwonderland.txt

#d
awk '{ if (length($0)>max) {max = length($0) ; row = $0 } } END {print row}' aliceinwonderland.txt

#e
cat aliceinwonderland.txt | tr -d '[:punct:]' |  awk '{for(i=1;i<=NF;i++) {count[$i]++;}} END {for(i in count) {print count[i], i} }' | sort -n | grep  [A-Za-z] | tail -5
















