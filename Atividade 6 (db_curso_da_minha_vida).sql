CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
nivel VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, nivel) 
VALUES ("EAD", "Iniciante");

INSERT INTO tb_categorias (tipo, nivel) 
VALUES ("EAD", "Intermediario");

INSERT INTO tb_categorias (tipo, nivel) 
VALUES ("EAD", "Avançado");

INSERT INTO tb_categorias (tipo, nivel) 
VALUES ("Presencial", "Iniciante");

INSERT INTO tb_categorias (tipo, nivel) 
VALUES ("Presencial", "Intermediario");

INSERT INTO tb_categorias (tipo, nivel) 
VALUES ("Presencial", "Avançado");
 
SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos (
id BIGINT NOT NULL AUTO_INCREMENT,
curso varchar(255) NOT NULL,
tempo_duracao varchar(255) NOT NULL,
preco decimal (6, 2), 
forma_pagamento varchar(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Ingles", "1 Anos", "1800.00", "Anual", 1);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Ingles", "1 Anos", "2100.00", "Anual", 2);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Ingles", "1 Anos", "2400.00", "Anual", 3);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Ingles", "1 Anos", "1200.00", "Anual", 4);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Ingles", "1 Anos", "2400.00", "Anual", 5);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Ingles", "1 Anos", "2600.00", "Anual", 6);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Espanhol", "1 Anos", "1800.00", "Anual", 1);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Espanhol", "1 Anos", "2100.00", "Anual", 2);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Espanhol", "1 Anos", "2400.00", "Anual", 3);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Espanhol", "1 Anos", "2100.00", "Anual", 4);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Espanhol", "1 Anos", "2400.00", "Anual", 5);

INSERT INTO tb_cursos (curso, tempo_duracao, preco, forma_pagamento, categoria_id)
VALUES ("Espanhol", "1 Anos", "3000.00", "Anual", 6);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE curso LIKE "%j%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT tb_cursos.curso, tb_categorias.tipo FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "EAD";

