#!/bin/bash
input="users-july.csv"
while IFS= read -r line
do
  voornaam=$(echo $line | cut -d ';' -f 1)
  achternaam=$(echo $line | cut -d ';' -f 2)
  email=$(echo $line | cut -d ';' -f 3)
  password=$(echo $line | cut -d ';' -f 4)

  echo "Hi $voornaam,"
  echo ""
  echo "Ik heb een account voor je aangemaakt op de OpenValue software architectuur-wiki."
  echo "Op deze wiki kun je de planning en het materiaal voor de software architectuur-training terugvinden en gaan we de resultaten van de opdrachten vastleggen waaraan we gedurende de training werken."
  echo ""
  echo "Je kunt inloggen op de wiki met de volgende gegevens:"
  echo ""
  echo "URL: https://wiki.openvalue.dev"
  echo "Gebruikersnaam: $email"
  echo "Wachtwoord: $password"
  echo ""
  echo "Zorg ervoor dat je minimaal een dag voor de start van de training hebt geverifieerd dat je kunt inloggen op de wiki."
  echo "Mocht er iets niet werken, laat het me weten."
  echo ""
  echo "Tot maandag!"
  echo ""
  echo "groeten,"
  echo "Bert Jan Schrijver"
  echo "OpenValue"

  echo ""
  echo ""
  echo ""



done < "$input"

