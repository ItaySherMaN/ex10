#a
sed -rn '/Sherlock|Holmes/p' sherlockholmes.txt | sed -n '$='
#b
sed 's/ /\n/g' sherlockholmes.txt | sed -rn '/Sherlock|Holmes/p' | sed -n '$='
#c
sed 's/Sherlock/Lord Voldemort/g' sherlockholmes.txt 
#d
sed -E 's/[A-Z][a-z]+ [A-Z][a-z]+/Dor Bazdtni/g' sherlockholmes.txt
#e
sed -E 's/\(([^\)]+)\)/\[\1\] /g' sherlockholmes.txt 
