CREATE DATABASE lojaonline;

use lojaonline;

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
  estoque INT DEFAULT 0 CHECK (estoque >= 0), 
  categoria_id INT NOT NULL,  
  FOREIGN KEY (categoria_id) REFERENCES Categorias(categoria_id) 
);


CREATE TABLE Pedidos (
  pedido_id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT NOT NULL,
  data_pedido DATE DEFAULT current_timestamp

);

CREATE TABLE ItensPedido (
  item_id INT PRIMARY KEY AUTO_INCREMENT,
  pedido_id INT NOT NULL,
  produto_id INT NOT NULL,
  quantidade INT NOT NULL CHECK (quantidade > 0),  
  preco_unitario DECIMAL(10, 2) NOT NULL CHECK (preco_unitario > 0), 
  FOREIGN KEY (pedido_id) REFERENCES Pedidos(pedido_id),  
  FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)  
);


CREATE TABLE Funcionarios (
  funcionario_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  cargo ENUM('vendedor', 'gerente', 'caixa') NOT NULL,
  salario DECIMAL(10, 2) NOT NULL CHECK (salario > 0)
);

INSERT INTO Clientes (nome, email, telefone)
VALUES
    ('João Silva', 'joao.silva1@example.com', '1234567890'),
    ('Maria Oliveira', 'maria.oliveira1@example.com', '0987654321'),
    ('Carlos Souza', 'carlos.souza1@example.com', '1122334455'),
    ('Ana Costa', 'ana.costa1@example.com', '2233445566'),
    ('Pedro Santos', 'pedro.santos1@example.com', '3344556677'),
    ('Julia Almeida', 'julia.almeida1@example.com', '4455667788'),
    ('Lucas Lima', 'lucas.lima1@example.com', '5566778899'),
    ('Fernanda Pereira', 'fernanda.pereira1@example.com', '6677889900'),
    ('Roberta Martins', 'roberta.martins1@example.com', '7788990011'),
    ('Ricardo Souza', 'ricardo.souza1@example.com', '8899001122'),
    -- Adicione até 50 clientes
    ('Cliente 50', 'cliente.50@example.com', '9988776655');

INSERT INTO Categorias (nome, descricao)
VALUES
    ('Roupas', 'Vestuário feminino e masculino'),
    ('Eletrônicos', 'Produtos eletrônicos como celulares, computadores, etc.'),
    ('Alimentos', 'Comidas e bebidas em geral'),
    ('Calçados', 'Sapatos e tênis'),
    ('Móveis', 'Móveis para a casa e escritório'),
    ('Decoração', 'Itens para decorar ambientes'),
    ('Ferramentas', 'Ferramentas para construção e reparos'),
    ('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
    ('Brinquedos', 'Brinquedos infantis'),
    ('Esportes', 'Produtos para atividades esportivas'),
    -- Adicione até 50 categorias
    ('Categoria 50', 'Descrição da categoria 50');
    
INSERT INTO Produtos (nome, preco, estoque, categoria_id)
VALUES
    ('Camiseta', 39.90, 100, 1),    -- Categoria 1: Roupas
    ('Notebook', 2999.99, 50, 2),   -- Categoria 2: Eletrônicos
    ('Arroz', 5.49, 200, 3),        -- Categoria 3: Alimentos
    ('Tênis', 159.90, 80, 4),       -- Categoria 4: Calçados
    ('Sofá', 799.99, 20, 5),       -- Categoria 5: Móveis
    ('Vaso de Flores', 49.90, 150, 6), -- Categoria 6: Decoração
    ('Martelo', 19.99, 60, 7),      -- Categoria 7: Ferramentas
    ('Shampoo', 25.90, 200, 8),     -- Categoria 8: Cosméticos
    ('Bola de Futebol', 89.90, 120, 9), -- Categoria 9: Esportes
    ('Carro de Controle Remoto', 99.90, 300, 10), -- Categoria 10: Brinquedos
    -- Adicione até 50 produtos
    ('Produto 50', 59.99, 100, 50);

NSERT INTO Pedidos (cliente_id, data_pedido)
VALUES
    (1, '2024-11-01'),
    (2, '2024-11-02'),
    (3, '2024-11-03'),
    (4, '2024-11-04'),
    (5, '2024-11-05'),
    -- Adicione até 50 pedidos
    (50, '2024-11-50');

INSERT INTO ItensPedido (pedido_id, produto_id, quantidade, preco_unitario)
VALUES
    (1, 1, 2, 39.90),   -- Pedido 1, Produto 1 (Camiseta), Quantidade 2
    (1, 2, 1, 2999.99),  -- Pedido 1, Produto 2 (Notebook), Quantidade 1
    (2, 3, 3, 5.49),    -- Pedido 2, Produto 3 (Arroz), Quantidade 3
    (2, 4, 1, 159.90),  -- Pedido 2, Produto 4 (Tênis), Quantidade 1
    (3, 5, 2, 799.99),  -- Pedido 3, Produto 5 (Sofá), Quantidade 2
    (3, 6, 1, 49.90),   -- Pedido 3, Produto 6 (Vaso de Flores), Quantidade 1
    -- Adicione até 50 itens de pedido
    (50, 50, 5, 59.99);  -- Pedido 50, Produto 50, Quantidade 5



INSERT INTO Funcionarios (nome, cargo, salario)
VALUES
    ('Pedro Santos', 'vendedor', 2000.00),
    ('Ana Costa', 'gerente', 5000.00),
    ('Lucas Lima', 'caixa', 1500.00),
    ('Mariana Silva', 'vendedor', 1800.00),
    ('João Pereira', 'gerente', 5500.00),
    ('Carlos Almeida', 'caixa', 1600.00),
    ('Juliana Oliveira', 'vendedor', 1900.00),
    ('Ricardo Souza', 'gerente', 6000.00),
    ('Felipe Costa', 'caixa', 1500.00),
    -- Adicione até 50 funcionários
    ('Funcionario 50', 'vendedor', 2500.00);

SELECT * FROM Clientes;
SELECT * FROM Categorias;
SELECT * FROM Produtos;
SELECT * FROM Pedidos;
SELECT * FROM ItensPedido;
SELECT * FROM Funcionarios;
    
    