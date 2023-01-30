awk '{count+=1} END{print count}' aliceinwonderland.txt
awk '/Alice/  {count+=1}END{print count}' aliceinwonderland.txt
awk '{ gsub(/ Alice /, " ##^^## ") ; print }' aliceinwonderland.txt |  awk '/\#\#\^\^\#\#/ {for(i=1;i<=NF;i++) print $i}' | awk '/\#\#\^\^\#\#/ {count+=1 }END {print count}' 
awk '{if (length($0)>max) max = length($0) } END {print max}' aliceinwonderland.txt 
awk 'gsub(/[[:punct:]]/,""); gsub(/’/,"");gsub(/‘/,"");gsub(/”/,"");gsub(/“/,"")'  aliceinwonderland.txt |awk '{for(i=1;i<=NF;i++) print $i}' | sort | uniq -c | sort -nk1 | tail -5
