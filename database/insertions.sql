/**************************************************************
* INSERTIONS DES DONNEES
***************************************************************/

-- ----------------------------------------------------
-- Ajout de données pour les modes de paiement
-- ----------------------------------------------------
TRUNCATE  ecommerce.modes_de_paiement;
INSERT INTO ecommerce.modes_de_paiement (mode_de_paiement) VALUES ('espece');
INSERT INTO ecommerce.modes_de_paiement (mode_de_paiement) VALUES ('carte bleu');
INSERT INTO ecommerce.modes_de_paiement (mode_de_paiement) VALUES ('cheque');

-- ----------------------------------------------------
-- Ajout de données pour les statuts de commande
-- ----------------------------------------------------
# RAZ sur la table
TRUNCATE ecommerce.statuts_de_commande;
INSERT INTO ecommerce.statuts_de_commande (statut)
VALUES
  ('en-cours'),
  ('payée'),
  ('expédiée'),
  ('livrée'),
  ('annulée');

-- ----------------------------------------------------
-- Ajout de données pour les rôles des auteurs, les langues et les éditeurs
-- ----------------------------------------------------
TRUNCATE `ecommerce`.`langues`;
TRUNCATE `ecommerce`.`editeurs`;
TRUNCATE `ecommerce`.`roles_auteurs`;
INSERT INTO `langues` (`id_langue`, `nom_langue`) VALUES (NULL, 'français'), (NULL, 'anglais');
INSERT INTO `editeurs` (`id_editeur`, `nom_editeur`) VALUES (NULL, 'POCKET'), (NULL, 'Albin Michel'), (NULL, 'Le Livre de Poche'), (NULL, 'Gallimard'), (NULL, 'Les Editions Persée');
INSERT INTO `roles_auteurs` (`id_role`, `role`) VALUES (NULL, 'auteur'), (NULL, 'traducteur');

-- ------------------------------------------------------
--  INSERT `ecommerce`.`clients`
-- ------------------------------------------------------
TRUNCATE `ecommerce`.`clients`;
INSERT INTO `ecommerce`.`clients`
(`nom`, `prenom`, `email`, `mot_de_passe`, `date_naissance`)
VALUES
  ('Sarkozy', 'Sebastien', 'mail@mail.com', 'mdp123', '1990-01-01'),
  ('Hollande', 'Pascal', 'mail@mail.com', 'mdp123', '1970-05-01'),
  ('Obama', 'Didier', 'mail@mail.com', 'mdp123', '1925-10-01'),
  ('Fillon', 'Karl', 'mail@mail.com', 'mdp123', '1950-01-01'),
  ('Mitterand', 'Sebastien', 'mail@mail.com', 'mdp123', '1968-09-01'),
  ('Pompidou', 'Antoine', 'mail@mail.com', 'mdp123', '1982-01-01');

-- ------------------------------------------------------
--  INSERT `ecommerce`.`auteurs`
-- ------------------------------------------------------
TRUNCATE ecommerce.auteurs;
INSERT INTO ecommerce.auteurs
(nom_auteur, prenom_auteur, biographie)
VALUES
  ('De Lafontaine', 'Jean', 'On dispose de très peu d’informations sur les années de formation de Jean de La Fontaine'),
  ('Wilde', 'Oscar', 'Oscar Wilde est né au 21, Westland Row à Dublin'),
  ('Herbert', 'Frank', 'Frank Herbert est né le 8 octobre 1920 à Tacoma dans l\'État de Washington, de Frank Herbert et Eileen McCarthy Herbert.'),
  ('Maupin', 'armistead', 'Ses parents sont Diana Jane (née Barton) et Armistead Jones Maupin'),
  ('Asimov', 'Isaac', 'Issu d’une famille juive, fils de Judah Asimov et de Anna Rachel Berman, Isaac naquit à Petrovitchi'),
  ('Zola', 'Emile', 'Émile Édouard Charles Antoine Zola naît 10 rue Saint-Joseph à Paris, le 2 avril 1840, d\'un père italien et d\'une mère française');