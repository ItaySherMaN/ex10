#!/bin/bash

#a number of lines:

awk '{print NF}' aliceinwonderland.txt | tail -n 1

#b number of lines with Alice
awk '/Alice/{c++} END {print "Total matched: ", c}' aliceinwonderland.txt

##c number of time " Alice " word is shown
awk '/ Alice / {print $0}' aliceinwonderland.txt | awk '{for(i=1;i<=NF;i++) print $i}' | awk '/^Alice$/ {c++} END {print c}'

##d print the  longest line and the line number 
awk '{ 
    if (length($0) > max) {
      a = $0;
      max = length($0);
    }
  } 
  END { 
    print "The row length is " max , "The row is " a;
 }' aliceinwonderland.txt 


##f print the 5 most common number in the book:
cat aliceinwonderland.txt | awk '{for (i=1;i<=NF;i++) print $i}' | sort | uniq -c | sort -n | tail -n 5

