sed -rn '/(Sherlock|Holmes)/p' sherlockholmes.txt | wc -l
sed -e 's/ /\n/g' sherlockholmes.txt | sed -rn '/(Sherlock|Holmes)/p'| wc -l
sed 's/"Sherlock"/"Orian"/g' sherlockholmes.txt
sed 's/\b[A-Z][a-z]\+ [A-Z][a-z]\+\b/Orian Ganor/g' sherlockholmes.txt 
sed 's/(/[/g;s/)/]/g' sherlockholmes.txt
