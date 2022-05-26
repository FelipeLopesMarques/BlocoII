CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
categoria INT,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, categoria) 
VALUES ("Bouvina", "1");

INSERT INTO tb_categorias (tipo, categoria) 
VALUES ("Bouvina", "2");

INSERT INTO tb_categorias (tipo, categoria) 
VALUES ("Bouvina", "3");
 
INSERT INTO tb_categorias (tipo, categoria) 
VALUES ("Suina", "0");
 
INSERT INTO tb_categorias (tipo, categoria) 
VALUES ("Aves", "0");
 
SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
id BIGINT NOT NULL AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal (4, 2), 
marca varchar(255) NOT NULL,
quantidade varchar(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Coxão mole", 42.00, "Friboi", "Kg", 1);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Ponta de agulha", 38.00, "Swift", "Kg", 2);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Paleta", 35.00, "Friboi", "Kg", 3);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Bisteca", 32.00, "Swift", "Kg", 4);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Peito", 15.00, "Sadia", "Unidade", 5);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Coxão duro", 40.00, "Friboi", "Kg", 1);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Acém", 35.00, "Swift", "Kg", 2);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Pescoço", 25.00, "Friboi", "Kg", 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_categorias.tipo FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.marca = "Swift";
