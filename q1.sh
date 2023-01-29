awk '{print NR}' aliceinwonderland.txt | tail -n 1

awk '$0~/Alice/ {print $0}' aliceinwonderland.txt

awk '{ for (i = 2; i <= NF; i++) { if ($i == "Alice") { count++ }}} END { print count }' aliceinwonderland.txt

awk '{ if (length($0) > max) { max = length($0); line = $0 }}  END { print line }' aliceinwonderland.txt

awk '{for (i=1; i<=NF; i++) { gsub(/[^[:alnum:]]/, "", $i); if ($i != "") words[$i]++ }} END {for (word in words) print word, words[word]}' aliceinwonderland.txt | sort -nrk2 | head -n 5

