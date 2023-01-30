sed -E -n 's/(Holmes|Sherlock)/\1\n/p' sherlockholmes.txt  | sed -E -n '/(Sherlock|Holmes)/p 
' |wc -l
