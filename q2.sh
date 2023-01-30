sed -n '/Holmes\|Sherlock/=' sherlockholmes.txt | wc -l

sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | grep -oE Sherlock\|Holmes | wc -l

sed 's/Sherlock/Kingshahar/g' sherlockholmes.txt 

sed -E 's/[A-Z][a-z]+ [A-Z][a-z]+/is it/g' sherlockholmes.txt 

sed -E "s/\((.+)\)/\[\1\]/g" sherlockholmes.txt