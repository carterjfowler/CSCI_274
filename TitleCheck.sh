#title check bash script

echo "Enter a title:"
read  title

for word in _${title}
do
   case "${word}" in
      A|An|In|Out|To|From|For|The|Of ) echo "'${word}' should NOT be capitalized.";;
      a|an|in|out|to|from|for|the|of ) ;;
      _[a-z]* ) echo "'${word:1}' should be capitalized.";;
      [a-z]* ) echo "'${word}' should be capitalized.";;
   esac
done
