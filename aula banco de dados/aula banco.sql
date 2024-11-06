create database loja_online;

use loja_online;
CREATE TABLE Clientes (
  cliente_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  telefone VARCHAR(15) NOT NULL,
  data_cadastro DATE DEFAULT current_timestamp
);

CREATE TABLE Categorias (
  categoria_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL UNIQUE,
  descricao TEXT
);

CREATE TABLE Produtos (
  produto_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL CHECK (preco > 0),
  estoque INT DEFAULT 0 CHECK (estoque >= 0),
  categoria_id INT NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES Categorias(categoria_id)
);

CREATE TABLE pedidos (
pedido_id INT PRIMARY KEY AUTO_INCREMENT,
cliente_id INT FOREING KEY,
cliente_id NOT NULL,


);








