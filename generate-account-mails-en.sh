#!/bin/bash
input="users-sogeti-april-24-.csv"
while IFS= read -r line
do
  voornaam=$(echo $line | cut -d ';' -f 1)
  achternaam=$(echo $line | cut -d ';' -f 2)
  email=$(echo $line | cut -d ';' -f 3)
  password=$(echo $line | cut -d ';' -f 4)

echo "Hi $voornaam,"
   echo ""
   echo "I have created an account for you for the OpenValue software architecture wiki."
   echo "On this wiki, you can find the schedule and material for the software architecture training, and we will use the wiki to store the results of the assignments that we'll work on during the training."
   echo ""
   echo "You can login to the wiki with the following credentials:"
   echo ""
   echo "URL: https://wiki.openvalue.dev"
   echo "Username: $email"
   echo "Password: $password"
   echo ""
   echo "Please make sure you have verified that you can log in to the wiki at least one day before the start of the training."
   echo "In case you can't log in or something else doesn't seem to work, let me know."
   echo ""
   echo "See you on the 15th!"
   echo ""
   echo "regards,"
   echo "Bert Jan Schrijver"
   echo "OpenValue"

  echo ""
  echo ""
  echo ""



done < "$input"

