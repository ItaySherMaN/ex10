awk '/Alice/ {print}' aliceinwonderland.txt | awk '{print NR}'  | tail -1
