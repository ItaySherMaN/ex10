#!/bin/bash

#a
#-I tells the command to search case-insensitive, so it will catch SHERLOCK or sherlock etc.
echo "number of lines contained Sherlock or Holmes are:"
sed -n -E '/(Sherlock|Holmes)/Ip' sherlockholmes.txt | wc -l

#b
#seperate the words,  each word is in a line, find the patterns, count the lines matching the pattern
echo "number of occurences of sherlock or holmes:"
sed 's/[[:space:]]/\n/g' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/Ip' | wc -l

#c
sed 's/Sherlock/FLOWER/g' sherlockholmes.txt

#d
sed -E 's/([A-Z][a-z]{2,})\s([A-Z][a-z]{2,})/Noa Banin/g' sherlockholmes.txt
#another way: sed -rn 's/ [A-Z].*\s[A-Z].* / Noa Banin /gp' sherlockholmes.txt 


#e
#one way: prints the lines where the change occured
sed -rn 's/\((.*)\)/\[\1\]/gp' sherlockholmes.txt
#second way: just replace the 2 words with my name, prints the full text with the changes
sed -E 's/\((.*)\)/\[\1\]/g' sherlockholmes.txt

