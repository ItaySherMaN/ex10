#a
cat sherlockholmes.txt | sed  -nr "/(Sherlock|Holmes)/p"|wc -l
#b
cat sherlockholmes.txt | sed  -nr "/(Sherlock|Holmes)/p"|grep -o "Sherlock\|Holmes"|wc -l
#c
cat sherlockholmes.txt| sed "s/Sherlock/moshe/g"
#d
cat sherlockholmes.txt| sed -rn 's/[A-Z][a-z]+\s[A-Z][a-z]+/Adam BB/gp' 
#e
cat sherlockholmes.txt| sed -rn 's/\((.*)\)/\[\1\]/gp'

