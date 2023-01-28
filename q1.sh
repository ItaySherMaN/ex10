#a:
awk 'END {print NR}' aliceinwonderland.txt
#b:
awk '/Alice/{c++} END {print c}' aliceinwonderland.txt
#c:
awk '{count += gsub(" Alice ", "")} END {print count}' aliceinwonderland.txt
#d:
awk '{ if (length($0) > max) max = length($0) } { if (length($0) == max) max_line = $0 } END { print max_line }' aliceinwonderland.txt
#e:
awk '{for (i=1;i<=NF;i++) {gsub(/[^a-zA-Z+$]/,"",$i); count[$i]++}} END {for (word in count) {print word, count[word] | "sort -nr -k 2 | head -5"} }' aliceinwonderland.txt | awk '{print $1}'

