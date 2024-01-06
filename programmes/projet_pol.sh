#!/usr/bin/env bash
URL=$1
N=0

if [ $# -ne 1 ]
then
	echo "Ce script demande un argument"
	exit
else
	if [ ! -e "$URL" ]
	then 
		echo "Le fichier n'existe pas"
		exit
	fi
fi

echo "<html>
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>związek | link | 관계</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulmaswatch.min.css">
    <link rel="stylesheet" href="https://unpkg.com/bulmaswatch/pulse/bulmaswatch.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulmaswatch.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="index.js"></script>
	</head>
	<body>"

echo "		<table class="table is-bordered">
		<tr><th>Numéro</th><th>URL</th><th>Code HTTP</th><th>Encodage</th><th>Aspiration</th><th>Dump</th><th>Nombre d'occurences</th><th>Contexte</th><th>Concordances</th></tr>"
while read -r URL
do
   	response=$(curl -s -L -w "%{http_code}" -o "../aspirations/aspiration_pl$N.html" $URL)
	CODE=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | egrep -E -o "charset=\S+" | cut -d"=" -f2 | tail -n 1| tr '[:lower:]' '[:upper:]')
	if [ $response == 200 ]; 
	then
	# 	if [ ! "$CODE" == "UTF-8" ]; 
	#then
    #     iconv -f "$CODE" -t "UTF-8" -o "/tmp/reencodage_$N.html"  "../aspirations/aspiration_pl$N.html"
	# 	mv "/tmp/reencodage_$N.html" "./aspirations/aspiration_pl$N.html"
    # fi
	lynx --assume-charset=UTF-8 --display-charset=UTF-8 -dump -nolist "$URL" | iconv -c -f "$CODE" -t UTF-8 >"../dumps-text/dump_pl$N.txt"	
    COMPTE=$(cat "../dumps-text/dump_pl$N.txt" | egrep -i -o -E "(Z|z)wi(a|ą)z(ek|k(u|owi|iem|i|(o|ó)w|om|ami|ach))"  | wc -w)
	cat "../dumps-text/dump_pl$N.txt" | egrep -C 3 -i -E "(Z|z)wi(a|ą)z(ek|k(u|owi|iem|i|(o|ó)w|om|ami|ach))" > "../contextes/contexte_pl$N.txt"
	bash ../concordances/concordancier.sh pl pl$N > "../concordances/concord_pl$N.html"
	fi

    echo "<tr>
    <td>$N</td>
    <td><a href="$URL">$URL</a></td>
    <td>$response</td>
    <td>$CODE</td>
    <td><a href='../aspirations/aspiration_pl$N.html'>aspiration</a></td>
    <td><a href='../dumps-text/dump_pl$N.txt'>dump</a></td>
    <td>$COMPTE</td>
    <td><a href='../contextes/contexte_pl$N.txt'>contexte</a></td>
	<td><a href="../concordances/concord_pl$N.html">Concordances</a></td>
    </tr>"
    N=$((N + 1))

done < "$URL"
echo "</table>
	</body>
</html>"
