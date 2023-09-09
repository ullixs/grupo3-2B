CREATE DATABASE receitas;
USE receitas;

CREATE TABLE categoria (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    hashtag VARCHAR(100) NOT NULL,
    salgado INT,
    doce INT,
    picante INT
);

CREATE TABLE usuario (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    qtde_receitas INT
);

CREATE TABLE ingredientes (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    qtde_ingrediente INT NOT NULL,
    preco_ingrediente DECIMAL(5,2),
    nome_ingrediente VARCHAR(100)
);

CREATE TABLE receita (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_publicacao DATE NOT NULL,
    duracao INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    qtde_ingrediente INT,
    nome_ingrediente VARCHAR(100) NOT NULL,
    modo_de_preparo TEXT,
    categoria_id INT,
    usuario_id INT,
    ingredientes_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (ingredientes_id) REFERENCES ingredientes(id)
);