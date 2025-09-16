DROP DATABASE IF EXISTS atividade15092025;
CREATE DATABASE atividade15092025;
USE atividade15092025;

CREATE TABLE vendas (
	idvenda INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    valor FLOAT NOT NULL,
    vendedor VARCHAR(50) NOT NULL
);

CREATE TABLE contasreceber (
	idcontasreceber INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idvenda INT NOT NULL,
    datavencimento DATE NOT NULL,
    valor FLOAT NOT NULL,
    vendedor VARCHAR(50) NOT NULL
);

CREATE VIEW `contasfiltradas` AS
SELECT * FROM contasreceber
WHERE (vendedor = SUBSTRING_INDEX(USER(), '@', 1));

CREATE VIEW `vendasfiltradas` AS
SELECT * FROM vendas
WHERE (vendedor = SUBSTRING_INDEX(USER(), '@', 1));

INSERT INTO vendedores(nome) VALUES
("suzana"), ("marcos"), ("joana");

INSERT INTO vendas(data, valor, vendedor) VALUES
(CURRENT_DATE(), 150.12, "suzana"),
(CURRENT_DATE(), 12140.0, "marcos"),
(CURRENT_DATE(), 112.7, "joana"),
(CURRENT_DATE(), 12.3, "suzana"),
(CURRENT_DATE(), 1.51, "joana");

INSERT INTO contasreceber(idvenda, datavencimento, valor, vendedor) VALUES
(1, "2025-10-20", 150.12, "suzana"),
(2, "2025-10-20", 12140.0, "marcos"),
(3, "2025-10-20", 112.7, "joana"),
(4, "2025-10-20", 12.3, "suzana"),
(5, "2025-10-20", 1.51, "joana");

CREATE ROLE Administrador;
CREATE ROLE Operador;
CREATE ROLE Vendedor;

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, ALTER, DROP ON atividade15092025.* TO Administrador;
GRANT SELECT, INSERT, UPDATE ON atividade15092025.vendas TO Operador;
GRANT SELECT, INSERT, UPDATE ON atividade15092025.contasreceber TO Operador;
GRANT SELECT ON atividade15092025.vendasfiltradas TO Vendedor;
GRANT SELECT ON atividade15092025.contasfiltradas TO Vendedor;

DROP USER IF EXISTS "chefe"@"localhost";
DROP USER IF EXISTS "gerente"@"localhost";
DROP USER IF EXISTS "suzana"@"localhost";

CREATE USER "chefe"@"localhost" IDENTIFIED BY "12345";
CREATE USER "gerente"@"localhost" IDENTIFIED BY "12345";
CREATE USER "suzana"@"localhost" IDENTIFIED BY "12345";

GRANT Administrador TO "chefe"@"localhost";
GRANT Operador TO "gerente"@"localhost";
GRANT Vendedor TO "suzana"@"localhost";

SET DEFAULT ROLE ALL TO "chefe"@"localhost", "gerente"@"localhost", "suzana"@"localhost";