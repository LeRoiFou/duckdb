/*
Lien : https://www.w3schools.com/sql/sql_join_left.asp
Cours : SQL LEFT JOIN

SYNTAXE :
SELECT column_name(s) FROM table1
    LEFT JOIN table2 ON table1.column_name = table2.column_name;

FONCTIONNALITÉ : 
Le mot-clé LEFT JOIN renvoie tous les enregistrements de la table de gauche (table1)
 et les enregistrements correspondants de la table de droite (table2). 
 Le résultat est 0 enregistrement du côté droit, s'il n'y a pas de correspondance.

CTRL + MAJ + Q : base de données à activer / affichage de la table requêtée

Pour exporter la table requêtée : dans le visuel de la table SQLITE, cliquer sur
l'icône "Export CSV"

Date: 24-01-2024
*/

-- Affichage des tables de la BD des ventes
-- SELECT * FROM Produits LIMIT 3;
-- SELECT * FROM Commandes LIMIT 3;
-- SELECT * FROM Clients LIMIT 3;

-- Affichage des 10 premières lignes des produits qui n'ont pas été vendus par
-- ordre croissant du nom du produit
SELECT Produit FROM Produits
    LEFT JOIN Commandes ON Produits.ProdID = Commandes.ProduitID
    LEFT JOIN Clients on Commandes.ClientID = Clients.ClientID
    WHERE Clients.Nom IS NULL
    ORDER BY Produit ASC
    LIMIT 10;
