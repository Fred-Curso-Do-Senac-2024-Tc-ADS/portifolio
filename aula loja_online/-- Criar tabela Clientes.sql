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
  data_pedido DATE DEFAULT CURRENT_DATE,
  FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

-- Criar tabela ItensPedido
CREATE TABLE ItensPedido (
  item_id INT PRIMARY KEY AUTO_INCREMENT,
  pedido_id INT NOT NULL,
  produto_id INT NOT NULL,
  quantidade INT NOT NULL CHECK (quantidade > 0),
  preco_unitario DECIMAL(10, 2) NOT NULL CHECK (preco_unitario > 0),
  FOREIGN KEY (pedido_id) REFERENCES Pedidos(pedido_id),
  FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);

-- Criar tabela Funcionarios
CREATE TABLE Funcionarios (
  funcionario_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  cargo ENUM('vendedor', 'gerente', 'caixa') NOT NULL,
  salario DECIMAL(10, 2) NOT NULL CHECK (salario > 0)
);