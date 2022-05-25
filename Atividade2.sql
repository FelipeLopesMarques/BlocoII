CREATE DATABASE db_atividade2;

USE db_atividade2;

CREATE TABLE tb_ecommerce(
id BIGINT AUTO_INCREMENT,
produto VARCHAR(255) NOT NULL,
quantidade INT, 
tamanho INT,
preco DECIMAL (5,2) NOT NULL, 
PRIMARY KEY (id)
);


INSERT INTO tb_ecommerce(produto, quantidade, tamanho, preco)
VALUES ("Tenis Nike",50, 41, 650.99);

INSERT INTO tb_ecommerce(produto, quantidade, tamanho, preco)
VALUES ("Tenis Adidas",75, 40, 599.99);

INSERT INTO tb_ecommerce(produto, quantidade, tamanho, preco)
VALUES ("Tenis Fila",35, 38, 359.99);

INSERT INTO tb_ecommerce(produto, quantidade, tamanho, preco)
VALUES ("Tenis Puma",15, 41, 559.99);

INSERT INTO tb_ecommerce(produto, quantidade, tamanho, preco)
VALUES ("Tenis New Balance",25, 41, 459.99);

INSERT INTO tb_ecommerce(produto, quantidade, tamanho, preco)
VALUES ("Tenis Vans",65, 41, 599.99);

INSERT INTO tb_ecommerce(produto, quantidade, tamanho, preco)
VALUES ("Tenis Rainha",15, 36, 199.99);

INSERT INTO tb_ecommerce(produto, quantidade, tamanho, preco)
VALUES ("Austar",10, 36, 199.99);

SELECT * FROM tb_ecommerce;

SELECT produto, preco FROM tb_ecommerce;

SELECT * FROM tb_ecommerce WHERE preco > 500;

SELECT * FROM tb_ecommerce WHERE preco < 500;

UPDATE tb_ecommerce SET preco = 759.99 WHERE id = 2;
