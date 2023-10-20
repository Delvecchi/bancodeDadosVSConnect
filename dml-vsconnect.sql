USE bd_vsconnect;


INSERT INTO tb_usuario VALUES ( 
	UUID_TO_BIN(UUID()),
    "Heitor",
    "heitor@email.com",
    "senai@134",
    "Via de pedestre Adolfo, 50",
    "04333100",
    0
);

INSERT INTO tb_usuario VALUES ( 
	UUID_TO_BIN(UUID()),
    "Helena",
    "helena@email.com",
    "senai@134",
    "Via de pedestre Smoes, 50",
    "04333110",
    0
);

INSERT INTO tb_usuario VALUES ( 
	UUID_TO_BIN(UUID()),
    "Barbara",
    "barbara@email.com",
    "senai@134",
    "Via de pedestre Muller, 50",
    "04333101",
    0
);

INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "html");
INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "css");

SELECT * FROM tb_usuario WHERE id = UUID_TO_BIN("e04a31ae-6ed1-11ee-a31c-6018954fb68c");

DELETE FROM tb_usuario WHERE id = UUID_TO_BIN("e04a31ae-6ed1-11ee-a31c-6018954fb68c");

SELECT * FROM tb_usuario WHERE id = UUID_TO_BIN("4fd64049-6ed2-11ee-a31c-6018954fb68c");

UPDATE tb_usuario SET  tipo_usuario = 1 WHERE id = UUID_TO_BIN("4fd64049-6ed2-11ee-a31c-6018954fb68c");



SELECT BIN_TO_UUID(id), tipo_usuario FROM tb_usuario;

SELECT * FROM tb_usuario;

SELECT * FROM tb_servico;

INSERT INTO tb_servico VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("543625b5-6ed2-11ee-a31c-6018954fb68c"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("543625b5-6ed2-11ee-a31c-6018954fb68c"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("543625b5-6ed2-11ee-a31c-6018954fb68c"), NULL);

SELECT BIN_TO_UUID(id), tipo_usuario FROM tb_usuario;
SELECT BIN_TO_UUID(id), nome FROM tb_tech;
SELECT BIN_TO_UUID(id), titulo FROM tb_servico;

SELECT * FROM tb_tech_servico;

INSERT INTO tb_tech_servico VALUES (
  UUID_TO_BIN("6fb5599f-6ed3-11ee-a31c-6018954fb68c"), UUID_TO_BIN("67c66553-6ed9-11ee-a31c-6018954fb68c")
);

INSERT INTO tb_tech_servico VALUES (
  UUID_TO_BIN("72242c78-6ed3-11ee-a31c-6018954fb68c"), UUID_TO_BIN("67c66bd8-6ed9-11ee-a31c-6018954fb68c")
);

INSERT INTO tb_tech_servico VALUES (
  UUID_TO_BIN("6fb5599f-6ed3-11ee-a31c-6018954fb68c"), UUID_TO_BIN("67c66c9e-6ed9-11ee-a31c-6018954fb68c")
);

SELECT BIN_TO_UUID(id), nome, tipo_usuario FROM tb_usuario;
SELECT BIN_TO_UUID(id), nome FROM tb_tech;
SELECT BIN_TO_UUID(id), titulo FROM tb_servico;

SELECT * FROM tb_dev_tech;

INSERT INTO tb_dev_tech VALUES (
 UUID_TO_BIN("4fd64049-6ed2-11ee-a31c-6018954fb68c"), UUID_TO_BIN("6fb5599f-6ed3-11ee-a31c-6018954fb68c")
);

SELECT BIN_TO_UUID(id), nome, tipo_usuario FROM tb_usuario;
SELECT BIN_TO_UUID(id), nome FROM tb_tech;
SELECT BIN_TO_UUID(id), titulo FROM tb_servico;

SELECT * FROM tb_cotacao;

INSERT INTO tb_cotacao VALUES (
 UUID_TO_BIN(UUID()),
 UUID_TO_BIN("4fd64049-6ed2-11ee-a31c-6018954fb68c"),
 UUID_TO_BIN("67c66bd8-6ed9-11ee-a31c-6018954fb68c"),
 5000.00
);