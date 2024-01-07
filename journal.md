## Journal de groupe
# Cours 10 - 29/11
(Débora) Création du journal de groupe / j'ai eu juste avant de rendre le devoir une branche divergente. Après
plusieurs dizaines de minutes à essayer de gérer le problème, je n'ai finalement fait qu'agraver les chose car
je me suis retrouvée à 10 commits de retards. Je le ferai plus tard à tête reposée. 

(Maria) J'ai rencontré quelques difficultés lors de la création de scripts après le 10e cours. La tâche la plus 
difficile a été d'obtenir correctement le nom de base du fichier que je traitais. Cela a nécessité de nombreuses
modifications de code, mais j'ai réussi à obtenir le format souhaité. De plus, indiquer les chemins des fichiers 
s'est avéré être un défi, mais j'ai réussi à résoudre ce problème en utilisant des chemins absolus.

(Clara)Je comprend comment réaliser l'exercice 2 mais lorsque je lance le script avec comme argument le chemin vers le
fichier dump on m'écrit "permission denied" et ça ne change pas même parès aveoir fait chmod +x et quelques autres
trucs que j'ai trouvés sur internet. J'ai demande à mes camarades de projet de regarder de leur côté pour voir si
elles avaient le même soucis que moi, et si ce n'est pas le cas alors on pourra terminer l'exercice depuis leur
machine. A part cela il n'y à pas grand chose à ajouter pour l'instant. notre site à l'air de fonctionner même si il
faut encore que nous travaillions sur la mise en page.

# Cours 11 - 06/12
(Débora) J'ai réussi à résoudre ma branche divergente en suivant des indications sur un forum et les conseils de
notre ami bash. J'ai maintenant un peu mieux compris l'histoire des merge et des rebase.

(Maria) J'ai fait quelques modifications sur notre page web et j'ai modifié le code HTML pour que le site soit plus clair. On continuera l'édition de notre site web ensemble après le cours 12. 

(Clara) Je me suis lancée dans la réalisagtion du concordancier. Cela va surement être une tache assez longue et 
fastidueuse vu comment c'est parti mais je pense pouvoir y arriver.

# Cours 12 - 13/12
(Débora) J'ai demandé en cours pour la tokenisation du coréen, et j'ai dû installer la librairie konlpy. On a
modifié le fichier de tokenisation du japonais et on l'a renommé korean.py. Les essais ont l'air concluants.

(Clara) J'ai passé la séance à traveiller sur le ocncordanceir mais ne comprenait pas pourquoi il ne fonctionnait pas 
il ne voulait pas reconnaitre la regex ou alors la placer correctement.J'ai également rencontré des soucis avec la 
boucle if : je veux faire en sorte qu'en fonction de la langue qu'on entre en argument, le programme passe dans une 
boucle if pour sélectonner la regex associée, ce qui permettrait de n'avoir qu'un programme pour les trois langues. 
Mais, il reffuse de fonctionner et j'ai du mal à comprendre pourquoi. Finalement il a fini par fonctionner, et il 
s'agissait d'un problème de guillemets ("" au lien de ''). Il ne reste plus qu'à le tester sur les autres langues, 
puisque j'ai travaillé dessus avec l'anglais, mais iil ne devrait pas y avoir de problème.

(Maria) Je me suis concentrée sur la création de page HTML et j'ai réussi de créer les pages liées à la page index. 
Cela m'a permis de bien voir la structure de notre site.

# 03/01
(Clara)Nous nous sommes dit que nous allions marquer une pause pendant les fêtes histoire de pouvoir profiter 
pleinement de nos proches, et reprendre le travail sur le projet à partir d'aujourd'hui. Je me suis remise à trvailler 
sur les concordanciers : j'avais réussi à faire correctement fonctionner le script à la fin de la dernière séance et 
j'ai donc entrepris aujourd'hui de l'ajouter aux scriptes des tablesx des trois langues. Cela n'a pas posé de 
problèmes en particulier. 
(Débora) Modifications de la page html et ajout de nouveaux liens pour le coréen.

# 04/01
(Maria) J'ai modifié le script de concordances en bash pour qu'il génère une page HTML avec des concordances.

# 05/01
(Maria) Aujourd'hui, j'ai travaillé sur mon script, et j'ai rencontré quelques difficultés tout au long du processus :
- Encodage des caractères polonais :
J'ai dû m'assurer que les caractères polonais étaient correctement affichés dans le script. Pour cela, j'ai ajouté l'option -assume_charset=UTF-8 à Lynx pour garantir le traitement en UTF-8 du contenu.
- Encodage des fichiers dump :
La gestion appropriée de l'encodage des fichiers dump générés par Lynx était cruciale. J'ai utilisé la commande file pour vérifier l'encodage et, au besoin, j'ai employé iconv pour une conversion explicite vers UTF-8.
- Utilisation de grep avec différentes versions :
J'ai rencontré des problèmes liés à l'utilisation de grep avec l'option -P. Certains systèmes ne la prennent pas en charge, donc j'ai ajusté le script pour utiliser l'option -E là où nécessaire.

# 06/01
(Maria) Aujourd'hui, j'ai rencontré un problème persistant d'encodage lié aux fichiers de dumps, mais finalement, j'ai réussi à le résoudre. J'ai également terminé l'analyse sur iTrameur et ajouté les captures d'écran de mes résultats. À présent, j'attends les analyses de Clara et de Débora pour compléter cette section et effectuer les modifications nécessaires sur le site HTML. De plus, j'ai ajouté un dossier dédié aux images et à la modification avec Bulma. Finalement, j'ai modifié le site HTML avec Bulma pour le rendre plus visible, j'ai ajouté une page pour les nuages de mots et j'ai créé une image de nuages de mots pour le polonais.

(Clara) Tous les tableaux ont une colonne concordancier avec des liens qui mènent effectivement vers une page html, si 
le site n'a pas d'errreur de type 400. Le script que j'avais fait focntionnait pour l'anglais mais pas pour le 
polonais apparement, donc Maria a écrit des lignes de codes pour cette langue et j'ai fait une boucle if pour que si 
la langue du fichier est polonais alors le programme passe par ses lignes, et si c'est autre (coréen ou anglais, 
donc), il passe par les miennes. Cela a l'air de fonctionner pour l'anglais et le polonais et nous attendons des 
retours de Déboré pour le coréen. J'ai égelement ttavaillé sur le visuel du site : rédaction de la page sur notre 
projet, le choix du mot et des langues. J'ai également rempli la partie me concernant dans 'qui sommes nous?". IL ne 
restera plus qu'à trouver une photo pour compléter tout cela. Je n'ai pas rencontré de problèmes particuiers à part le 
fait que j'ai un peu de mal à comprendre comment me servir du HTML, mais Maria m'a aidé et je suis alllée également me 
renseigner sur le site de Bulma.

# 07/01

(Clara) Il ne reste du travail pour aujourd'hui mais rien de sorcier. Je n'vais pas encore fait 
l'analyse iTRameur de l'anglais donc je l'ai faite, pris des captures d'écrans et l'ai intégré à 
la page "analyse". Maria avait déjà fait sa partie avec la présentation HTML donc j'ai en partie 
repris la disposition de ses images et textes. J'ai également fait la partie PALS pour l'anglais, 
ainsi que le nuage de mots. Il ne reste désormais plus qu'à faire une courte introduction à notre 
proket sur la page principale et à attendre que Déboré finisse sa partir iTrameur et son nuage de 
mots. Il n'y a pas eu de problèmes particuliers puis qu'il s'est surtout sagit de récupérer des 
résultats, les analyser et les présenter sur la page.
- Updates : J'ai terminé de rédiger la courte intruducion sur la page d'accueil de notre site, et ai modififié le style du tableau pour le rendre plus lisible et l'accorder au reste du site, sur le modèle choisi par Maria. Je l'ai également fait pour le tableau en coréen. Je pense que ma part du travail est finie!

(Maria) Aujourd'hui, ma to-do list était plutôt légère, donc j'en ai profité pour modifier le site HTML. J'ai pris le temps de traquer et de corriger les petites erreurs qui s'étaient glissées dans le code, ajusté la taille du contenu des images pour une meilleure esthétique, et poussé l'analyse un peu plus loin en utilisant les scripts Python de PALS. En parallèle, j'ai modifié les transitions sur le site pour garantir une expérience utilisateur fluide. Maintenant, il ne me reste plus qu'à attendre la fin des analyses en cours et à déposer notre travail. 
