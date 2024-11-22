CREATE DATABASE hotel_Gestao;
USE hotel_Gestao;

CREATE TABLE quartos (
    id_quarto INT AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('simples', 'duplo', 'suíte', 'luxo') NOT NULL,  -- Incluí 'luxo' no ENUM
    preco DECIMAL(10, 2) NOT NULL,
    status ENUM('disponível', 'reservado', 'ocupado') NOT NULL
);

CREATE TABLE hospedes (
    id_hospede INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    documento_identificacao VARCHAR(20) UNIQUE NOT NULL,  -- Corrigido o nome da coluna
    contato VARCHAR(50) NOT NULL
);

CREATE TABLE funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    horario_trabalho VARCHAR(50) NOT NULL
);

CREATE TABLE reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_quarto INT,
    id_hospede INT,
    data_check_in DATE NOT NULL,
    data_check_out DATE NOT NULL,
    FOREIGN KEY (id_quarto) REFERENCES quartos(id_quarto),
    FOREIGN KEY (id_hospede) REFERENCES hospedes(id_hospede)
);

-- Corrigindo os inserts com o valor correto para os quartos, removendo id_quarto
INSERT INTO quartos (tipo, preco, status) VALUES
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 300.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 350.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 300.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 350.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 300.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 350.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 300.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 350.00, 'disponível');

-- Corrigindo o INSERT para hospedes com a coluna correta e os valores de contato
INSERT INTO hospedes (nome, documento_identificacao, contato) VALUES
('João Silva', '123456789', '987654321'),
('Maria Oliveira', '223344556', '988776655'),
('Carlos Souza', '334455667', '977665544'),
('Ana Pereira', '445566778', '966554433'),
('Pedro Costa', '556677889', '955443322'),
('Julia Almeida', '667788990', '944332211'),
('Lucas Santos', '778899001', '933221100'),
('Fernanda Lima', '889900112', '922110099'),
('Ricardo Alves', '990011223', '911099887'),
('Patricia Rocha', '101112334', '900887776'),
('Rodrigo Martins', '112233445', '899776665'),
('Gabriela Costa', '223344556', '888665554'),
('Gustavo Pereira', '334455667', '877554443'),
('Clara Nascimento', '445566778', '866443332'),
('Bruno Vieira', '556677889', '855332221'),
('Isabela Barbosa', '667788990', '844221100'),
('Mariana Rodrigues', '778899001', '833110099'),
('Daniel Martins', '889900112', '822099887'),
('Renata Oliveira', '990011223', '811988776'),
('Vinicius Souza', '101112334', '800877665'),
('Paula Lima', '112233445', '799766554'),
('Fábio Costa', '223344556', '788655443'),
('Marcos Silva', '334455667', '777544332'),
('Eliane Almeida', '445566778', '766433221'),
('Tiago Rocha', '556677889', '755322110');

-- Inserção dos funcionarios
INSERT INTO funcionarios (nome, cargo, horario_trabalho) VALUES
('Carlos Alberto', 'Recepcionista', '08:00 - 16:00'),
('Fernanda Lima', 'Camareira', '08:00 - 16:00'),
('Pedro Costa', 'Garçom', '12:00 - 20:00'),
('Mariana Nunes', 'Chef de Cozinha', '06:00 - 14:00'),
('Lucas Silva', 'Segurança', '22:00 - 06:00'),
('Raquel Souza', 'Recepcionista', '16:00 - 00:00'),
('Rafael Barbosa', 'Garçom', '12:00 - 20:00'),
('Gustavo Oliveira', 'Camareira', '08:00 - 16:00'),
('Isabela Pereira', 'Recepcionista', '08:00 - 16:00'),
('Thiago Rodrigues', 'Segurança', '22:00 - 06:00'),
('Carla Mendes', 'Camareira', '08:00 - 16:00'),
('Ricardo Santos', 'Garçom', '12:00 - 20:00'),
('Juliana Martins', 'Chef de Cozinha', '06:00 - 14:00'),
('Fábio Souza', 'Segurança', '22:00 - 06:00'),
('Renata Silva', 'Recepcionista', '16:00 - 00:00'),
('Marcos Oliveira', 'Garçom', '12:00 - 20:00'),
('Daniele Ferreira', 'Camareira', '08:00 - 16:00'),
('Lucas Costa', 'Segurança', '22:00 - 06:00'),
('Fabiana Souza', 'Recepcionista', '08:00 - 16:00'),
('Felipe Lima', 'Camareira', '08:00 - 16:00'),
('Paula Oliveira', 'Recepcionista', '16:00 - 00:00'),
('Eduardo Rocha', 'Garçom', '12:00 - 20:00'),
('Roberta Santos', 'Chef de Cozinha', '06:00 - 14:00'),
('Antonio Ferreira', 'Segurança', '22:00 - 06:00'),
('Aline Souza', 'Camareira', '08:00 - 16:00');

-- Inserção de reservas
INSERT INTO reservas (id_quarto, id_hospede, data_check_in, data_check_out) VALUES
(1, 1, '2024-11-20', '2024-11-25'),
(2, 2, '2024-11-21', '2024-11-22'),
(3, 3, '2024-11-20', '2024-11-21');

-- Consultas
SELECT id_quarto, tipo, preco, status FROM quartos WHERE status = 'disponível';

SELECT h.nome, r.data_check_in, r.data_check_out
FROM reservas r
JOIN hospedes h ON r.id_hospede =
CREATE DATABASE hotel_Gestao;
USE hotel_Gestao;

-- Tabelas
CREATE TABLE quartos (
    id_quarto INT AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('simples', 'duplo', 'suíte', 'luxo') NOT NULL, 
    preco DECIMAL(10, 2) NOT NULL,
    status ENUM('disponível', 'reservado', 'ocupado') NOT NULL
);

CREATE TABLE hospedes (
    id_hospede INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    documento_identificacao VARCHAR(20) UNIQUE NOT NULL,  
    contato VARCHAR(50) NOT NULL
);

CREATE TABLE funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    horario_trabalho VARCHAR(50) NOT NULL
);

CREATE TABLE reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_quarto INT,
    id_hospede INT,
    data_check_in DATE NOT NULL,
    data_check_out DATE NOT NULL,
    FOREIGN KEY (id_quarto) REFERENCES quartos(id_quarto),
    FOREIGN KEY (id_hospede) REFERENCES hospedes(id_hospede)
);

-- Inserção dos quartos
INSERT INTO quartos (tipo, preco, status) VALUES
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 300.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 350.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 300.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 350.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 300.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 350.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 300.00, 'disponível'),
('simples', 150.00, 'disponível'),
('duplo', 200.00, 'disponível'),
('luxo', 350.00, 'disponível');

-- Inserção dos hóspedes
INSERT INTO hospedes (nome, documento_identificacao, contato) VALUES
('João Silva', '123456789', '987654321'),
('Maria Oliveira', '223344556', '988776655'),
('Carlos Souza', '334455667', '977665544'),
('Ana Pereira', '445566778', '966554433'),
('Pedro Costa', '556677889', '955443322'),
('Julia Almeida', '667788990', '944332211'),
('Lucas Santos', '778899001', '933221100'),
('Fernanda Lima', '889900112', '922110099'),
('Ricardo Alves', '990011223', '911099887'),
('Patricia Rocha', '101112334', '900887776'),
('Rodrigo Martins', '112233445', '899776665'),
('Gabriela Costa', '223344556', '888665554'),
('Gustavo Pereira', '334455667', '877554443'),
('Clara Nascimento', '445566778', '866443332'),
('Bruno Vieira', '556677889', '855332221'),
('Isabela Barbosa', '667788990', '844221100'),
('Mariana Rodrigues', '778899001', '833110099'),
('Daniel Martins', '889900112', '822099887'),
('Renata Oliveira', '990011223', '811988776'),
('Vinicius Souza', '101112334', '800877665'),
('Paula Lima', '112233445', '799766554'),
('Fábio Costa', '223344556', '788655443'),
('Marcos Silva', '334455667', '777544332'),
('Eliane Almeida', '445566778', '766433221'),
('Tiago Rocha', '556677889', '755322110');

-- Inserção dos funcionários
INSERT INTO funcionarios (nome, cargo, horario_trabalho) VALUES
('Carlos Alberto', 'Recepcionista', '08:00 - 16:00'),
('Fernanda Lima', 'Camareira', '08:00 - 16:00'),
('Pedro Costa', 'Garçom', '12:00 - 20:00'),
('Mariana Nunes', 'Chef de Cozinha', '06:00 - 14:00'),
('Lucas Silva', 'Segurança', '22:00 - 06:00'),
('Raquel Souza', 'Recepcionista', '16:00 - 00:00'),
('Rafael Barbosa', 'Garçom', '12:00 - 20:00'),
('Gustavo Oliveira', 'Camareira', '08:00 - 16:00'),
('Isabela Pereira', 'Recepcionista', '08:00 - 16:00'),
('Thiago Rodrigues', 'Segurança', '22:00 - 06:00'),
('Carla Mendes', 'Camareira', '08:00 - 16:00'),
('Ricardo Santos', 'Garçom', '12:00 - 20:00'),
('Juliana Martins', 'Chef de Cozinha', '06:00 - 14:00'),
('Fábio Souza', 'Segurança', '22:00 - 06:00'),
('Renata Silva', 'Recepcionista', '16:00 - 00:00'),
('Marcos Oliveira', 'Garçom', '12:00 - 20:00'),
('Daniele Ferreira', 'Camareira', '08:00 - 16:00'),
('Lucas Costa', 'Segurança', '22:00 - 06:00'),
('Fabiana Souza', 'Recepcionista', '08:00 - 16:00'),
('Felipe Lima', 'Camareira', '08:00 - 16:00'),
('Paula Oliveira', 'Recepcionista', '16:00 - 00:00'),
('Eduardo Rocha', 'Garçom', '12:00 - 20:00'),
('Roberta Santos', 'Chef de Cozinha', '06:00 - 14:00'),
('Antonio Ferreira', 'Segurança', '22:00 - 06:00'),
('Aline Souza', 'Camareira', '08:00 - 16:00');

-- Inserção das reservas
INSERT INTO reservas (id_quarto, id_hospede, data_check_in, data_check_out) VALUES
(1, 1, '2024-11-20', '2024-11-25'),
(2, 2, '2024-11-21', '2024-11-22'),
(3, 3, '2024-11-20', '2024-11-21');

-- Consultas
SELECT id_quarto, tipo, preco, status FROM quartos WHERE status = 'disponível';

SELECT h.nome, r.data_check_in, r.data_check_out
FROM reservas r
JOIN hospedes h ON r.id_hospede = h.id_hospede
WHERE r.data_check_in >= '2024-11-20' AND r.data_check_out <= '2024-11-22';

SELECT q.tipo, q.preco, q.status
FROM reservas r
JOIN quartos q ON r.id_quarto = q.id_quarto
