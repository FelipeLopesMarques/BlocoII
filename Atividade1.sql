CREATE DATABASE db_atividade1;

USE db_atividade1;

CREATE TABLE tb_colaboradores(
ID BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
cpf INT,
data_nascimento DATE,
cargo VARCHAR (255) NOT NULL,
salario DECIMAL (6,2)NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Luke",123123123-45, "2000-10-17", "Aux. Administrativo", 1500.00);

INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Julia",123456789-10, "2001-12-20", "Chef de Cozinha", 4000.00);

INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Marcos",109876543-21, "1992-11-04", "Professor", 2800.00);

INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Maria",135792468-45, "1996-12-05", "Dev Junior", 4500.00);

INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, cargo, salario)
VALUES ("Clara",9753186420-45, "1999-05-11", "Contadora", 2500.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 5000.00 WHERE id = 3;




