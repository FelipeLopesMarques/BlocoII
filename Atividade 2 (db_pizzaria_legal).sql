CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
borda VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, borda) 
VALUES ("pizza", "com borda");

INSERT INTO tb_categorias (tipo, borda) 
VALUES ("pizza", "sem borda");

INSERT INTO tb_categorias (tipo, borda) 
VALUES ("brotinho", "com borda");

INSERT INTO tb_categorias (tipo, borda)
 VALUES ("brotinho", "sem borda");
 
 INSERT INTO tb_categorias (tipo, borda)
 VALUES ("pizza", "com catupiry");
 
SELECT * FROM tb_categorias;


CREATE TABLE tb_pizzas (
id BIGINT NOT NULL AUTO_INCREMENT,
sabor varchar(255) NOT NULL,
preco decimal (4, 2), 
acompanhamento varchar(255) NOT NULL,
quantidade INT,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, preco, acompanhamento, quantidade, categoria_id)
VALUES ("Calabresa", 35.00, "Cebola", 1, 1);

INSERT INTO tb_pizzas (sabor, preco, acompanhamento, quantidade, categoria_id)
VALUES ("Muçarela", 35.00, "Azeitonas", 1, 2);

INSERT INTO tb_pizzas (sabor, preco, acompanhamento, quantidade, categoria_id)
VALUES ("Brócules", 45.00, "Bacon", 1, 3);

INSERT INTO tb_pizzas (sabor, preco, acompanhamento, quantidade, categoria_id)
VALUES ("Chocolate", 50.00, "não", 1, 4);

INSERT INTO tb_pizzas (sabor, preco, acompanhamento, quantidade, categoria_id)
VALUES ("Frango com catupiry", 35.00, "não", 1, 5);

INSERT INTO tb_pizzas (sabor, preco, acompanhamento, quantidade, categoria_id)
VALUES ("Portuguesa", 40.00, "não", 1, 6);

INSERT INTO tb_pizzas (sabor, preco, acompanhamento, quantidade, categoria_id)
VALUES ("Napolitana", 50.00, "não", 1, 7);

INSERT INTO tb_pizzas (sabor, preco, acompanhamento, quantidade, categoria_id)
VALUES ("Marguerita", 45.00, "não", 1, 8);
 
 SELECT * FROM tb_pizzas;
 
SELECT * FROM tb_pizzas WHERE preco > 45.00;
 
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.sabor, tb_categorias.tipo FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "brotinho";




 
 
 
 