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

Date : 28-12-2023
Éditeur : Laurent REYNAUD