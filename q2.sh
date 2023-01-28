#a
sed -rn '/(Sherlock|Holmes)/p' sherlockholmes.txt | wc -l

#b
sed -rn '/(Sherlock|Holmes)/p' sherlockholmes.txt | grep -E -o '(Sherlock|Holmes)' | wc -l

#c
sed 's/Sherlock/Roy/g' sherlockholmes.txt

#d
 sed -rn 's/[A-Z][a-z]+\s[A-Z][a-z]+/Roy Efroni/gp' sherlockholmes.txt

#e
sed -rn 's/\((.*)\)/\[\1\]/gp' sherlockholmes.txt
