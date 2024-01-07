#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Utilisation : $0 fichier_input dump_pals_LANG.txt"
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

# python3 ./programmes/korean.py ./PALS/dump_pals_kor.txt   --target "관계" --match-mode regex -N 10 --tool-emulation itrameur > ./PALS/resultats_pals_kor.txt


# #!/usr/bin/env bash

# FOLDER=$1
# URL=$2
# URL_FILE="../urls/$URL.txt"

# if [ $# -ne 2 ] # verifier si le script a un argument
# then
# 	echo "ce programme demande deux arguments: un argument pour le chemin vers le dossier itrameur et le fichier text format ro_ukraine, ro_israel, ro_general" 
# 	exit
# fi

# N=1
# #supprimer les fichier avant de commencer, pour ne pas avoir les memes fichier plusieurs fois si on execute le script de nouveau
# echo "" > $FOLDER/dump-pals-$URL.txt
# echo "" > $FOLDER/contexte-pals-$URL.txt

# while read -r line;
# do
# 	cat ../dumps-text/dump_${URL}_$N.txt | tr -cs "[:alpha:]." "\n" | sed "s/\./\n/g" >> $FOLDER/dump-pals-$URL.txt
# 	cat ../contexte/contexte_${URL}_$N.txt | tr -cs "[:alpha:]." "\n" | sed "s/\./\n/g" >> $FOLDER/contexte-pals-$URL.txt
# 	N=$(expr $N + 1)
# done < $URL_FILE
