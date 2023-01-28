#a
awk 'END {print NR}' aliceinwonderland.txt
#b
awk '/Alice/ {count++} END {print count}' aliceinwonderland.txt
#c
awk '{
  for (i = 2; i <= NF; i++) {
    if ($i == "Alice") {
      count++
    }
  }
}
END { print count }' aliceinwonderland.txt
#d
awk '{ if (length($0)>max) {max = length($0) ; row = $0 } } END {print row}' aliceinwonderland.txt
#e
cat aliceinwonderland.txt | tr -d '[:punct:]' |awk '{
    for(i=1;i<=NF;i++){
        count[$i]++;
    }
}
END {
    for (word in count) {
        print count[word],word;
    }
}'|sort -n |grep [A-Za-z]|tail -n 5
