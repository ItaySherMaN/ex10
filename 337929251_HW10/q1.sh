awk '{print NR}' aliceinwonderland.txt | tail -1

awk '/Alice/ {count++} END {print count}' aliceinwonderland.txt

awk '{for (i=2; i<=NF; i++) { if ($i == "Alice") { count++ }}} END { print count }' aliceinwonderland.txt 

awk '{ if (length > max) { max = length; line = $0 } } END { print line }' aliceinwonderland.txt

awk '{for(i=1;i<=NF;i++) if ($i ~ /^[a-zA-Z]+$/) words[tolower($i)]++} END{for(word in words) {print words[word], word | "sort -nr | head -5"}}' aliceinwonderland.txt 
