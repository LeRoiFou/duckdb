# Librairie Duckdb

Duckdb permet d'effectuer des requêtages SQL pour des gros fichiers (L47 A II LPF)

[Présentation de la librairie](https://www.datacamp.com/blog/an-introduction-to-duckdb-what-is-it-and-why-should-you-use-it#rdl)

Cette librairie permet d'effectuer des fonctiosn d'agrégation, d'assemblage, de recoupement pour des fichiers importants avant d'effectuer éventuellemment d'autres traitements plus précis avec les librairies pandas, polars...

En recourant à cette librairie, on se situe entre le stade de la data engineering et la data scientist.
Cela nécessite de récupérer des données qui peuvent être sauvegardées dans différents endroits par la société [documentation](https://www.dynamips.com/sauvegarde-de-donnees-quel-type-de-stockage-choisir-pour-votre-entreprise/)

La sauvegarde peut se faire à partir :

- d'un [NAS](https://www.youtube.com/watch?v=9G5HlnSkUus) (Network Attached Storage - serveur de sauvegarde par réseau autonome) permettant d'accéder aux données en local et à distance. Le serveur est hébergé chez soi-même (et non chez google, amazon, microsoft...) avec ses propres accès. Possibilité de la mise en place d'un VPN, avec sécurisation des données que l'on peut récupérer même de l'étranger ([Autre lien](https://www.macway.com/guide/20058/serveur-nas-cest-quoi#:~:text=Le%20NAS%2C%20ou%20Network%20Attached,vos%20fichiers%20depuis%20plusieurs%20appareils.)). Les données étant chiffrées, le prestataire ne peut pas avoir accéder aux données "brutes" sauvegardées par le client.
- d'un [stockage en cloud privé](https://www.ipe.fr/stockage-des-donnees-quest-ce-que-le-cloud-prive/) permettant de mettre en place un environnement sur-mesure pour un client ciblé. L'accès est réservé à un seul client, adapté aux besoins de l'entreprise, les données peuvent être hébergées soit auprès de serveurs physiques dans l'entreprise, soit un data center externe. La connection est cryptée et sécurisée.
- d'un [stockage en cloud public](https://www.ipe.fr/stockage-des-donnees-quest-ce-que-le-cloud-prive/) géré par des entreprises comme Amazon (AWS), Microsoft (Azure), Google Cloud Platform, IBM Cloud et Oracle Cloud. Les données sont hébergées sur une multitude de serveurs, auxquels peuvent accéder de nombreux utilisateurs. Cela ne signifie évidemment pas que les données de l’entreprise sont publiques, mais simplement que l’environnement cloud n’est pas conçu sur mesure pour un client.
- de disques durs externes : disque dur portable sécurisé à reconnaissance d'empreinte digitale, disque dure avec un chiffrement sur l'accès par MDP...

Il y a principalement 3 types de BD :

* SQLITE : pour traiter sur des petits fichiers ;
* POSTGRESQL : pour traiter sur des fichiers de taille importante ;
* MYSQL : pour le partage des données

Date : 28-12-2023
Éditeur : Laurent REYNAUD

---

Duckdb / SQL ou Excel Query ?

Un test a été effectué avec un fichier .csv de 10 Go :

- Excel Query : le fichier n'a pas pu être chargé après 12 minutes d'attentes
- Duckdb :

  - Avec jupysql : le fichier met environ 5 minutes pour se charger
  - Avec le terminal Duckdb : le fichier met environ 2 minutes pour se charger

Le problème pour Duckdb est l'encodage : il suffit qu'un caractère du type 'ö' soit présent dans le fichier, qu'il ne se charge pas. À cela, actuellement deux solutions sont proposées, compte tenu que les travaux à opérer ne seront pas automatisés :

* Soit charger le fichier .csv dans une BD et effectuer des traitements SQL dessus (voir explications dans le fichier jupyter indexA002)
* Soit charger le fichier .csv dans une BD et exporter sous un format .csv (voir explications dans le fichier jupyter indexA002)

Dans les deux cas, un test a été réalisés avec le fichier .csv de 10 Go :

* Le chargement du fichier dans la BD a mis moins de 5 minutes
* L'exportation de la table de la BD dans un fichier .csv a mis environ 5 minutes

**Conclusion :**

1. Pour tous traitements opérés qui ne nécessitent pas d'automatisation de données, travailler de préférence sur la librairie duckdb avec jupysql
2. Si le fichier est important, travailler sur le terminal de duckdb
3. et à défaut de chargement, importer le fichier .csv dans une BD

Concernant les opérations de fusion, de concaténation, avec la fonction sqlite_scan(), il n'est pas possible de travailler sur plusieurs tables présentes dans une base de données. Dans ce cas, travailler directement sur du SQL et pour exporter sous format .csv les requêtes opérées sur les tables, dans la fenêtre d'affichage de la table SQLite, cliquer sur l'icône "Export CSV"


![](assets/20240122_100412_image.png)


Date : 08-01-2024

Éditeur : Laurent Reynaud

---

Désignation des index :

> * index00... : introduction sur duckdb
> * indexA0... : test sur duckb
> * indexB0... : cours sur le site [SQL TUTORIAL](https://www.w3schools.com/sql/default.asp)
> * indexC0... : test sur les FEC
