TRUNCATE `ecommerce`.`langues`;
TRUNCATE `ecommerce`.`editeurs`;
TRUNCATE `ecommerce`.`roles_auteurs`;
INSERT INTO `langues` (`id_langue`, `nom_langue`) VALUES (NULL, 'fran�ais'), (NULL, 'anglais');
INSERT INTO `editeurs` (`id_editeur`, `nom_editeur`) VALUES (NULL, 'POCKET'), (NULL, 'Albin Michel'), (NULL, 'Le Livre de Poche'), (NULL, 'Gallimard'), (NULL, 'Les Editions Pers�e');
INSERT INTO `roles_auteurs` (`id_role`, `role`) VALUES (NULL, 'auteur'), (NULL, 'traducteur');