#a
awk '{print NR}' aliceinwonderland.txt | tail -n 1

#b
awk '/Alice/ {count++} END {print count}' aliceinwonderland.txt

#c
awk '{for (i=2; i<=NF; i++) if ($i == "Alice") count++} END {print count}' aliceinwonderland.txt 


#d
awk '{ if (length($0)>max) {max = length($0) ; row = $0 } } END {print row}' aliceinwonderland.txt

#e
awk '{for (i=1; i<=NF; i++) {
  gsub(/[^[:alnum:]]/, "", $i);
  if ($i != "") words[$i]++
}} END {for (word in words) print word, words[word]}' aliceinwonderland.txt | sort -nrk2 | head -n 5


