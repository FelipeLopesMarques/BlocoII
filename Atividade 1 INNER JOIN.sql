CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (classe) VALUES ("Forte");
INSERT INTO tb_classes (classe) VALUES ("Fraco");
INSERT INTO tb_classes (descricao) VALUES ("Heroi");
INSERT INTO tb_classes (descricao) VALUES ("Vilão");
INSERT INTO tb_classes (descricao) VALUES ("Anti-Heroi");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens (
id bigint AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
habilidade VARCHAR (255) NOT NULL,
poder_defesa INT,
poder_ataque INT,
classe_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classe_id)
VALUES ("Logan", "Garras de Adamantium", 3000, 4000, 1, 3);

INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classe_id)
VALUES ("Jean Grey", " Telecinese", 9000, 5000, 1, 5);

INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classe_id)
VALUES ("Mistica", "Metamorfo", 20000, 1000, 1, 4);

INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classe_id)
VALUES ("Magneto", "Manipulação do Magnetismo", 4000, 4000, 1, 4);

INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classe_id)
VALUES ("Loki", "Resistência sobre-humana", 1500, 1500, 2, 4);

INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classe_id)
VALUES ("Homem-Aranha", "Rentido de aranha", 2000, 3000, 1, 3 );

INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classe_id)
VALUES ("Homem de Ferro", "armadura", 9, 4000, 1, 3 );

INSERT INTO tb_personagens (nome, habilidade, poder_defesa, poder_ataque, classe_id)
VALUES ("Batman", "não tem superpoderes", 7, 2000, 1, 3 );

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome Like "%ra%";

SELECT nome, habilidade, poder_defesa, poder_ataque, tb_classes.classe AS descricao_da_categoria
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

SELECT nome, tb_classes.classe AS Heroi
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;