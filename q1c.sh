awk '/ Alice / {print}' aliceinwonderland.txt |  awk 'BEGIN {count=0} {for (i=2;i<NF;i++)if ($i == "Alice") count+=1 } END {print count}'
