CREATE TABLE Quartos (
    id_quarto INT PRIMARY KEY,          -- Identificador único do quarto
    numero_quarto VARCHAR(10),          -- Número do quarto
    tipo VARCHAR(20),                   -- Tipo do quarto (simples, duplo, suíte)
    preco DECIMAL(10, 2),               -- Preço da diária
    status VARCHAR(20)                  -- Status do quarto (disponível, reservado, ocupado)
);


CREATE TABLE Hospedes (
    id_hospede INT PRIMARY KEY,         -- Identificador único do hóspede
    nome VARCHAR(100),                  -- Nome do hóspede
    documento_identidade VARCHAR(20),  -- Documento de identidade (ex: RG ou CPF)
    telefone VARCHAR(20),               -- Telefone do hóspede
    email VARCHAR(100)                  -- E-mail do hóspede
);


CREATE TABLE Reservas (
    id_reserva INT PRIMARY KEY,         -- Identificador único da reserva
    id_hospede INT,                     -- Chave estrangeira referenciando o hóspede
    id_quarto INT,                      -- Chave estrangeira referenciando o quarto
    data_check_in DATE,                 -- Data de check-in
    data_check_out DATE,                -- Data de check-out
    status_reserva VARCHAR(20),         -- Status da reserva (confirmada, cancelada, etc.)
    FOREIGN KEY (id_hospede) REFERENCES Hospedes(id_hospede),
    FOREIGN KEY (id_quarto) REFERENCES Quartos(id_quarto)
);



CREATE TABLE Funcionarios (
    id_funcionario INT PRIMARY KEY,     -- Identificador único do funcionário
    nome VARCHAR(100),                  -- Nome do funcionário
    cargo VARCHAR(50),                  -- Cargo do funcionário (ex: recepcionista, camareiro, etc.)
    horario_trabalho VARCHAR(50)        -- Horário de trabalho do funcionário
);



INSERT INTO Hospedes (id_hospede, nome, documento_identidade, telefone, email)
VALUES (1, 'João Silva', '123456789', '987654321', 'joao@email.com');


INSERT INTO Quartos (id_quarto, numero_quarto, tipo, preco, status)
VALUES (101, '101', 'Simples', 150.00, 'Disponível');


INSERT INTO Reservas (id_reserva, id_hospede, id_quarto, data_check_in, data_check_out, status_reserva)
VALUES (1, 1, 101, '2024-11-20', '2024-11-25', 'Confirmada');


SELECT * FROM Quartos WHERE status = 'Disponível';



SELECT * FROM Reservas WHERE id_hospede = 1;


SELECT * FROM Hospedes WHERE id_hospede = 1;


UPDATE Reservas SET status_reserva = 'Cancelada' WHERE id_reserva = 1;



UPDATE Quartos SET preco = 180.00 WHERE id_quarto = 101;


DELETE FROM Reservas WHERE id_reserva = 1;



DELETE FROM Hospedes WHERE id_hospede = 1;
