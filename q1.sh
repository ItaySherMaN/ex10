awk 'END {print NR}' aliceinwonderland.txt

awk '/[Aa]lice/ {count = count +1} END {print count}' aliceinwonderland.txt

awk '{for (i=2;i<=NF;i++) if ($i == "Alice") count++} END {print count}' aliceinwonderland.txt

awk '{ if (length($0) > max) { max = length($0) ; row = $0}} END {print row}' aliceinwonderland.txt

awk '{for(i=1;i<=NF;i++) if ($i ~ /^[a-zA-Z]+$/) words[tolower($i)]++} END {for (key in words) {print words[key],key| "sort -nr|head -5"}}' aliceinwonderland.txt
