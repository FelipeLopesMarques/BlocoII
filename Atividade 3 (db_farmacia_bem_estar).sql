CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT NOT NULL AUTO_INCREMENT,
marca VARCHAR(255) NOT NULL,
prescricao_medica VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (marca, prescricao_medica) 
VALUES ("generico", "sim");

INSERT INTO tb_categorias (marca, prescricao_medica) 
VALUES ("generico", "não");

INSERT INTO tb_categorias (marca, prescricao_medica) 
VALUES ("original", "sim");

INSERT INTO tb_categorias (marca, prescricao_medica) 
 VALUES ("original", "não");
 
 INSERT INTO tb_categorias (marca, prescricao_medica) 
 VALUES ("não identificado", "não");
 
SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
id BIGINT NOT NULL AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal (4, 2), 
tipo varchar(255) NOT NULL,
quantidade INT,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_produtos (nome, preco, tipo, quantidade, categoria_id)
VALUES ("Dipirona", 2.50, "comprimido", 1, 1);

INSERT INTO tb_produtos (nome, preco, tipo, quantidade, categoria_id)
VALUES ("Dipirona", 2.50, "comprimido", 1, 1);

INSERT INTO tb_produtos (nome, preco, tipo, quantidade, categoria_id)
VALUES ("Minoxidl", 60.00, "Liquido", 1, 1);

INSERT INTO tb_produtos (nome, preco, tipo, quantidade, categoria_id)
VALUES ("Xarope", 6.50, "Liquido", 1, 1);

INSERT INTO tb_produtos (nome, preco, tipo, quantidade, categoria_id)
VALUES ("Predinizolona", 5.50, "comprimido", 1, 1);

INSERT INTO tb_produtos (nome, preco, tipo, quantidade, categoria_id)
VALUES ("Predinizolona", 4.50, "Liquido", 1, 1);

INSERT INTO tb_produtos (nome, preco, tipo, quantidade, categoria_id)
VALUES ("Pantogar", 85.50, "capsulas", 1, 1);

INSERT INTO tb_produtos (nome, preco, tipo, quantidade, categoria_id)
VALUES ("Omeprazol", 7.50, "comprimido", 1, 1);

INSERT INTO tb_produtos (nome, preco, tipo, quantidade, categoria_id)
VALUES ("Buscopan", 6.50, "comprimido", 1, 1);
 
SELECT * FROM tb_produtos;
 
SELECT * FROM tb_produtos WHERE preco > 50.00;
 
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
 
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
 
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_categorias.tipo FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.marca = "generico";
 