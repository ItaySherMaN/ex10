#a
sed -n '/Sherlock\|Holmes/=' sherlockholmes.txt | wc -l

#b
sed -n 's/Sherlock\|Holmes/blonblon/pg' sherlockholmes.txt | grep -c blonblon

#c
sed -n 's/Sherlock/King/pg' sherlockholmes.txt

#d
sed -E 's/^[A-Z][a-z]{2,}\ [A-Z][a-z]{2,}/Alon/g' sherlockholmes.txt 

#e
sed -rn 's/\((.*)\)/\[\1\]/gp' sherlockholmes.txt