#a:
sed -n -E '/Sherloc|Holmes/p' sherlockholmes.txt | sed -n '$='
#b:
sed 's/ /\n/g' sherlockholmes.txt |sed -rn '/Sherlock|Holmes/p'| sed -n '$='
#c:
sed 's/Sherlock/Mai/g' sherlockholmes.txt
#d:
sed -E 's/[A-Z][a-z]+ [A-Z][a-z]+/Mai Shamos/g' sherlockholmes.txt
#e:
sed -E 's/\(([^\)]*)\)/[\1]/g' sherlockholmes.txt
