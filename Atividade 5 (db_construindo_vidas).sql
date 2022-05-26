CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
departamento VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, departamento) 
VALUES ("Hidráulico", "DEP-1");

INSERT INTO tb_categorias (tipo, departamento)  
VALUES ("Eletrico", "DEP-2");

INSERT INTO tb_categorias (tipo, departamento) 
VALUES ("Estrutural", "DEP-3");
 
INSERT INTO tb_categorias (tipo, departamento) 
VALUES ("Acabamento", "DEP-4");
 
INSERT INTO tb_categorias (tipo, departamento) 
VALUES ("Decoração", "DEP-5");
 
SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT NOT NULL AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal (5, 2), 
marca varchar(255) NOT NULL,
quantidade varchar(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Cano de PVC3/4", 17.00, "Tigre", "Metro", 1);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Caixa de Tomada", 50.00, "Tramontina", "Unidade", 2);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Viga de madeira", 25.00, "Tupi", "Metro", 3);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Revestimento", 35.00, "Vivence", "Metro2", 4);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Espelho 180 cm", 355.00, "Cosmic", "Unidade", 5);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Torneira", 75.00, "Tramontina", "Unidade", 1);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Tomada", 20.00, "Tramontina", "Unidade", 2);

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id)
VALUES ("Bloco de concreto", 3.00, "Tupi", "Unidade", 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_categorias.tipo FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.marca = "Tramontina";
