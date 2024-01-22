/*
Lien : https://www.w3schools.com/sql/sql_join_inner.asp
Cours : SQL INNER JOIN

SYNTAXE :
SELECT column_name(s) FROM table1
    INNER JOIN table2 ON table1.column_name = table2.column_name;

Le mot-clé INNER JOIN sélectionne les enregistrements dont les valeurs 
correspondent dans les deux tables.

CTRL + MAJ + Q : base de données à activer / affichage de la table requêtée

Pour exporter la table requêtée : dans le visuel de la table SQLITE, cliquer sur
l'icône "Export CSV"

Date: 22-01-24
*/

-- Affichage des tables de la BD des ventes
-- SELECT * FROM Produits LIMIT 3;
-- SELECT * FROM Commandes LIMIT 3;
-- SELECT * FROM Clients LIMIT 3;

-- Fusion entre les tables clients et commandes
-- recoupement avec la clé ClientID :
-- Affichage du nom, prénom, référence client et n° de commande du client
-- SELECT commandes.ClientID, Nom, Prénom, Commandes.Cde FROM Clients
--     INNER JOIN Commandes ON Clients.ClientID = Commandes.ClientID LIMIT 10;

-- Fusion entre 3 tables :
-- Affichage du nom et du prénom client de la table clients
-- Affichage du n° de commande de la table commandes
-- Affichage du produit de la table produits
SELECT Nom, Prénom, Commandes.Cde, Produits.Produit FROM Clients
    INNER JOIN Commandes ON clients.ClientID = Commandes.ClientID
    INNER JOIN Produits ON Commandes.ProduitID = Produits.ProdID LIMIT 10;
