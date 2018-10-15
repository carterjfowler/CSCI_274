#Bash script - Star Wars Quotes

echo "Pick a quote-sayer from: "
ls -1
echo "... or enter QUIT to exit the script."

while [[ "$REPLY" != "QUIT" ]]; do
   read REPLY
   if [[ "$REPLY" = "QUIT" ]]; then
      exit 0
   elif [[ -d "$REPLY" ]]; then
      echo "$REPLY said..."
      cat ./"$REPLY"/quote.txt
   else
      exit 7
   fi
done
