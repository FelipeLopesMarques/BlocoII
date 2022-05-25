CREATE DATABASE db_atividade3;

USE db_atividade3;

CREATE TABLE tb_listadealunos(

id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
sobrenome VARCHAR (255) NOT NULL,
idade INT,
data_nascimento DATE,
nota DECIMAL (2,1),
PRIMARY KEY (id)
);
INSERT INTO tb_listadealunos(nome, sobrenome, idade, data_nascimento, nota)
VALUES ("Mike", "Souza", 10, "2013-10-05", 8.5);

INSERT INTO tb_listadealunos(nome, sobrenome, idade, data_nascimento, nota)
VALUES ("Camila", "Silva", 10, "2013-12-03", 7.5);

INSERT INTO tb_listadealunos(nome, sobrenome, idade, data_nascimento, nota)
VALUES ("Marcelo", "Almeida", 10, "2013-05-03", 9.5);

INSERT INTO tb_listadealunos(nome, sobrenome, idade, data_nascimento, nota)
VALUES ("Fabio", "Nascimento", 10, "2013-02-02", 9.5);

INSERT INTO tb_listadealunos(nome, sobrenome, idade, data_nascimento, nota)
VALUES ("Julia", "Nascimento", 10, "2013-09-03", 9.5);

INSERT INTO tb_listadealunos(nome, sobrenome, idade, data_nascimento, nota)
VALUES ("Paula", "Silva", 10, "2013-08-05", 9.5);

INSERT INTO tb_listadealunos(nome, sobrenome, idade, data_nascimento, nota)
VALUES ("Julia", "Nascimento", 10, "2013-09-03", 9.5);

INSERT INTO tb_listadealunos(nome, sobrenome, idade, data_nascimento, nota)
VALUES ("Paloma", "Da Costa", 10, "2013-10-04", 8.5);

SELECT * FROM tb_listadealunos;

SELECT * FROM tb_listadealunos WHERE nota > 7;

SELECT * FROM tb_listadealunos WHERE nota < 7;

UPDATE tb_listadealunos SET nota = 8.5 WHERE id = 2;

