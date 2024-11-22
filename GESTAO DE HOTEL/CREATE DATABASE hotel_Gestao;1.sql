CREATE DATABASE hotel_Gestao;
USE hotel_Gestao;


CREATE TABLE quartos (
    id_quarto INT AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('simples', 'duplo', 'suíte') NOT NULL,
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


INSERT INTO quartos (tipo, preco, status) VALUES
INSERT INTO Quartos (id_quarto, numero_quarto, tipo, preco, status) VALUES 
(101, '101', 'Simples', 150.00, 'Disponível'),
(102, '102', 'Duplo', 200.00, 'Disponível'),
(103, '103', 'Luxo', 300.00, 'Disponível'),
(104, '104', 'Simples', 150.00, 'Disponível'),
(105, '105', 'Duplo', 200.00, 'Disponível'),
(106, '106', 'Luxo', 350.00, 'Disponível'),
(107, '107', 'Simples', 150.00, 'Disponível'),
(108, '108', 'Duplo', 200.00, 'Disponível'),
(109, '109', 'Luxo', 300.00, 'Disponível'),
(110, '110', 'Simples', 150.00, 'Disponível'),
(111, '111', 'Duplo', 200.00, 'Disponível'),
(112, '112', 'Luxo', 350.00, 'Disponível'),
(113, '113', 'Simples', 150.00, 'Disponível'),
(114, '114', 'Duplo', 200.00, 'Disponível'),
(115, '115', 'Luxo', 300.00, 'Disponível'),
(116, '116', 'Simples', 150.00, 'Disponível'),
(117, '117', 'Duplo', 200.00, 'Disponível'),
(118, '118', 'Luxo', 350.00, 'Disponível'),
(119, '119', 'Simples', 150.00, 'Disponível'),
(120, '120', 'Duplo', 200.00, 'Disponível'),
(121, '121', 'Luxo', 300.00, 'Disponível'),
(122, '122', 'Simples', 150.00, 'Disponível'),
(123, '123', 'Duplo', 200.00, 'Disponível'),
(124, '124', 'Luxo', 350.00, 'Disponível'),
(125, '125', 'Simples', 150.00, 'Disponível');



INSERT INTO hospedes (nome, documento_identificacao, contato) VALUES
INSERT INTO Hospedes (id_hospede, nome, documento_identidade, telefone, email) VALUES 
(1, 'João Silva', '123456789', '987654321', 'joao@email.com'),
(2, 'Maria Oliveira', '223344556', '988776655', 'maria@email.com'),
(3, 'Carlos Souza', '334455667', '977665544', 'carlos@email.com'),
(4, 'Ana Pereira', '445566778', '966554433', 'ana@email.com'),
(5, 'Pedro Costa', '556677889', '955443322', 'pedro@email.com'),
(6, 'Julia Almeida', '667788990', '944332211', 'julia@email.com'),
(7, 'Lucas Santos', '778899001', '933221100', 'lucas@email.com'),
(8, 'Fernanda Lima', '889900112', '922110099', 'fernanda@email.com'),
(9, 'Ricardo Alves', '990011223', '911099887', 'ricardo@email.com'),
(10, 'Patricia Rocha', '101112334', '900887776', 'patricia@email.com'),
(11, 'Rodrigo Martins', '112233445', '899776665', 'rodrigo@email.com'),
(12, 'Gabriela Costa', '223344556', '888665554', 'gabriela@email.com'),
(13, 'Gustavo Pereira', '334455667', '877554443', 'gustavo@email.com'),
(14, 'Clara Nascimento', '445566778', '866443332', 'clara@email.com'),
(15, 'Bruno Vieira', '556677889', '855332221', 'bruno@email.com'),
(16, 'Isabela Barbosa', '667788990', '844221100', 'isabela@email.com'),
(17, 'Mariana Rodrigues', '778899001', '833110099', 'mariana@email.com'),
(18, 'Daniel Martins', '889900112', '822099887', 'daniel@email.com'),
(19, 'Renata Oliveira', '990011223', '811988776', 'renata@email.com'),
(20, 'Vinicius Souza', '101112334', '800877665', 'vinicius@email.com'),
(21, 'Paula Lima', '112233445', '799766554', 'paula@email.com'),
(22, 'Fábio Costa', '223344556', '788655443', 'fabio@email.com'),
(23, 'Marcos Silva', '334455667', '777544332', 'marcos@email.com'),
(24, 'Eliane Almeida', '445566778', '766433221', 'eliane@email.com'),
(25, 'Tiago Rocha', '556677889', '755322110', 'tiago@email.com');


INSERT INTO funcionarios (nome, cargo, horario_trabalho) VALUES
(1, 'Carlos Alberto', 'Recepcionista', '08:00 - 16:00'),
(2, 'Fernanda Lima', 'Camareira', '08:00 - 16:00'),
(3, 'Pedro Costa', 'Garçom', '12:00 - 20:00'),
(4, 'Mariana Nunes', 'Chef de Cozinha', '06:00 - 14:00'),
(5, 'Lucas Silva', 'Segurança', '22:00 - 06:00'),
(6, 'Raquel Souza', 'Recepcionista', '16:00 - 00:00'),
(7, 'Rafael Barbosa', 'Garçom', '12:00 - 20:00'),
(8, 'Gustavo Oliveira', 'Camareira', '08:00 - 16:00'),
(9, 'Isabela Pereira', 'Recepcionista', '08:00 - 16:00'),
(10, 'Thiago Rodrigues', 'Segurança', '22:00 - 06:00'),
(11, 'Carla Mendes', 'Camareira', '08:00 - 16:00'),
(12, 'Ricardo Santos', 'Garçom', '12:00 - 20:00'),
(13, 'Juliana Martins', 'Chef de Cozinha', '06:00 - 14:00'),
(14, 'Fábio Souza', 'Segurança', '22:00 - 06:00'),
(15, 'Renata Silva', 'Recepcionista', '16:00 - 00:00'),
(16, 'Marcos Oliveira', 'Garçom', '12:00 - 20:00'),
(17, 'Daniele Ferreira', 'Camareira', '08:00 - 16:00'),
(18, 'Lucas Costa', 'Segurança', '22:00 - 06:00'),
(19, 'Fabiana Souza', 'Recepcionista', '08:00 - 16:00'),
(20, 'Felipe Lima', 'Camareira', '08:00 - 16:00'),
(21, 'Paula Oliveira', 'Recepcionista', '16:00 - 00:00'),
(22, 'Eduardo Rocha', 'Garçom', '12:00 - 20:00'),
(23, 'Roberta Santos', 'Chef de Cozinha', '06:00 - 14:00'),
(24, 'Antonio Ferreira', 'Segurança', '22:00 - 06:00'),
(25, 'Aline Souza', 'Camareira', '08:00 - 16:00'),
(26, 'Andréa Lima', 'Recepcionista', '16:00 - 00:00'),


INSERT INTO reservas (id_quarto, id_hospede, data_check_in, data_check_out) VALUES
(1, 1, '2024-11-20', '2024-11-25'),
(2, 2, '2024-11-21', '2024-11-22'),
(3, 3, '2024-11-20', '2024-11-21');


SELECT id_quarto, tipo, preco, status FROM quartos WHERE status = 'disponível';

SELECT h.nome, r.data_check_in, r.data_check_out
FROM reservas r
JOIN hospedes h ON r.id_hospede = h.id_hospede
WHERE r.data_check_in >= '2024-11-20' AND r.data_check_out <= '2024-11-22';


SELECT q.tipo, q.preco, q.status
FROM reservas r
JOIN quartos q ON r.id_quarto = q.id_quarto
JOIN hospedes h ON r.id_hospede = h.id_hospede
WHERE h.nome = 'João Silva';


UPDATE hospedes
SET nome = 'João Souza'
WHERE id_hospede = 1;


UPDATE quartos
SET status = 'ocupado'
WHERE id_quarto = 1;


DELETE FROM reservas WHERE id_reserva = 1;


SELECT * FROM reservas;
SELECT * FROM hospedes;
SELECT * FROM quartos;
