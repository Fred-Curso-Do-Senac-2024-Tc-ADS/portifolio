-- Criar tabela Clientes
CREATE TABLE Clientes (
  cliente_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  telefone VARCHAR(15) NOT NULL,
  data_cadastro DATE DEFAULT CURRENT_DATE
);

-- Criar tabela Categorias
CREATE TABLE Categorias (
  categoria_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL UNIQUE,
  descricao TEXT
);

-- Criar tabela Produtos
CREATE TABLE Produtos (
  produto_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL CHECK (preco > 0),
  estoque INT DEFAULT 0 CHECK (estoque >= 0),
  categoria_id INT NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES Categorias(categoria_id)
);

-- Criar tabela Pedidos
CREATE TABLE Pedidos (
  pedido_id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
  data_pedido DATE DEFAULT CURRENT_DATE,
  total DECIMAL(10, 2) NOT NULL CHECK (total > 0)
);

-- Criar tabela Itens_Pedido
CREATE TABLE Itens_Pedido (
  item_id INT PRIMARY KEY AUTO_INCREMENT,
  pedido_id INT NOT NULL,
  produto_id INT NOT NULL,
  quantidade INT NOT NULL CHECK (quantidade > 0),
  FOREIGN KEY (pedido_id) REFERENCES Pedidos(pedido_id),
  FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);
```

Observações:

- O comando `CHECK` é utilizado para impor restrições adicionais aos dados.
- O comando `FOREIGN KEY` é utilizado para estabelecer relacionamentos entre tabelas.
- A tabela `Itens_Pedido` foi adicionada para armazenar os itens de cada pedido.

Certifique-se de executar os comandos SQL no MySQL Workbench, na ordem em que 
foram apresentados, para evitar erros de dependência entre tabelas.

create table usuario(
id int auto_increment primary key,
nome varchar(100) not null,
email varchar(50) not null unique,
idade int,
crado_em timestamp default current_timestamp
);

select * from usuarioa;

select * from usuarios where idade > 18;