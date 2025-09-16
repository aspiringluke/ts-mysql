CREATE DATABASE atividade15092025;
USE atividade15092025;

CREATE TABLE usuarios (
	idusuario INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL
);

CREATE TABLE vendas (
	idvenda INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    valor FLOAT NOT NULL,
    usuario INT NOT NULL
);

CREATE TABLE contasreceber (
	idcontasreceber INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idvenda INT NOT NULL,
    datavencimento DATE NOT NULL,
    valor FLOAT NOT NULL,
    usuario INT NOT NULL
);