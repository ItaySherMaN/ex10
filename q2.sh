# /bin/bash
## print in order not to alter the orriginal text during work I did not use the flag -i!!
#a

sed -n "/\(Holmes\|Sherlock\)/=" sherlockholmes.txt | wc -l

#b
sed -e "s/ /\n/g" sherlockholmes.txt | sed -n "/\(Holmes\|Sherlock\)/=" | wc -l

#c

sed -e "s/Sherlock/this_name_is_removed/g" sherlockholmes.txt

#d
sed 's/\b[A-Z][a-z]\+\s[A-Z][a-z]\+\b/REPLACEMENT_WORD/g' sherlockholmes.txt 

#e
sed "s/(/[/g" sherlockholmes.txt | sed "s/)/]/g"

echo print in order not to alter the orriginal text during work I did not use the flag -i!!
