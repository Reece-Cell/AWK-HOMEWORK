#!/bin/bash
# list the number of times subsequences appear in wordlist.txt, with
# most common subsequences first
# Two command-line parameters must be provided:
#   m is a number > 0 giving the subsequence length
#   n is a number >= m giving the maximum word length to consider

#
#!/bin/bash
# list the number of times subsequences appear in wordlist.txt, with
# most common subsequences first
# Two command-line parameters must be provided:
#   n is a number > 0 giving the subsequence length
#   m is a number >= m giving the maximum word length to consider

#
touch print.txt
awk -v N=$1 -v M=$2 -f substr.awk wordlist.txt > print.txt
cat print.txt | tr  -s ' ' '\n'  | sort | uniq -c | sort  -r| awk '{print $1, $2}'
#