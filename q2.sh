#a
sed -rn '/(Sherlock|Holmes)/p' sherlockholmes.txt | wc -l

#b
sed -rn '/(Sherlock|Holmes)/p' sherlockholmes.txt | grep -E -o '(Sherlock|Holmes)' | wc -l
a
# another way
sed 's/[[:space:]]/\n/g' sherlockholmes.txt | sed -rn '/(Sherlock|Holmes)/p' | wc -l

#c
sed 's/Sherlock/Adam/g' sherlockholmes.txt

#d
sed -rn 's/[A-Z][a-z]+\s[A-Z][a-z]+/Adam Bublil/gp' sherlockholmes.txt

#e
sed -rn 's/\((.*)\)/\[\1\]/gp' sherlockholmes.txt
