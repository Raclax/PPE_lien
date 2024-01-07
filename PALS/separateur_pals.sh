#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Utilisation : $0 ../itrameur/dump_LANG.txt dump_pals_LANG.txt"
  exit 1
fi

fichier_input=$1
fichier_output=$2

# Vérifier si le fichier d'entrée existe
if [ ! -f "$fichier_input" ]; then
  echo "Erreur : fichier d'entrée n'existe pas"
  exit 1
fi

cat "$fichier_input" | tr -cs "[:alpha:]." "\n" | sed "s/\./\n/g"  > "$fichier_output"

echo "Mots séparés avec succès. Le résultat a été enregistré dans $fichier_output"

# python3 ./programmes/korean.py ./PALS/dump_pals_kor.txt   --target "관계" --match-mode regex -N 10 --tool-emulation itrameur > ./PALS/RESULTATS/resultats_pals_kor.txt


#
