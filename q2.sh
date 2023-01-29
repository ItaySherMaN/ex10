sed -rn 's/(Holmes|Sherlock)/\1/p' sherlockholmes.txt | wc -l

sed -e "s/ /\n/g" sherlockholmes.txt| sed -rn 's/(Holmes|Sherlock)/\1/p' | wc -l

sed 's/Sherlock/Shuki/g' sherlockholmes.txt 

sed -E 's/[A-Z][a-z]{2,} [A-Z][a-z]{2,}/Shai Somekh/g' sherlockholmes.txt

sed -E 's/\((.*)\)/[\1]/g' sherlockholmes.txt 




