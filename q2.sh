#!/bin/bash

#a print the number of lines in which the words Sherlock or Holmes is shown:
sed -En 's/(Sherlock)|(Holmes)/abcdefg/p' sed_example.txt | wc -l  

#b find the number of occurence of words Sherlock or Holmes
sed  's/ /\n/g' sherlockholmes.txt | sed -En 's/(Sherlock)|(Holmes)/We are just counting/p' | wc -l

#C replace Sherlock name with any name you'd like
sed  's/Sherlock/Watson/g' sherlockholmes.txt 

#d reaplce a man full name or location name with your name
sed -En 's/([A-Z][a-z]+\s[A-Z][a-z]+)|^\s[A-Z][a-z]+/Eilon/pg' sherlockholmes.txt

#f write a command that replace all the sentences in a paretesis to square brackets
sed -n 's/(/[/pg' sherlockholmes.txt | sed -n 's/)/]/pg'


