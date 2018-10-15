#bash script Lite Lifting

characters=$(cat $1 | wc -m)
echo "This file has ${characters} characters in it."

characters1=$(cat $1 | tr -d '\n'| wc -m)
echo "This file has ${characters1} characters not counting newline."

emptylines=$(cat $1 | grep -e '^$' | wc -l)
echo "This file has ${emptylines} empty lines."

alphanumeric=$(cat $1 | tr -cd '[:alnum:]' | wc -m)
echo "This file contains ${alphanumeric} alphanumeric characters."

word=$(cat $1 | head -3 | tail -1 | cut -f4 -d' ')
echo "The 4th word of the 3rd line of text is /${word}/"

if cat $1 | tr '\n' ' ' | grep -e 'Capital Idea' > /dev/null; then
     sed 's/./\L&/g' $1 > $1.lc
fi
