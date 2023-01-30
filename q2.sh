cat sherlockholmes.txt | sed  -nr "/(Sherlock|Holmes)/p" | wc -l

cat sherlockholmes.txt | sed  -nr "/(Sherlock|Holmes)/p" | grep -o "Sherlock\|Holmes" | wc -l

cat sherlockholmes.txt| sed "s/Sherlock/Bob/g"

cat sherlockholmes.txt| sed -rn 's/[A-Z][a-z]+\s[A-Z][a-z]+/Max Cohen/gp'

cat sherlockholmes.txt| sed -rn 's/\((.*)\)/\[\1\]/gp'

