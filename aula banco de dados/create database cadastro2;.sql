create database cadastro2;

use cadastro2;
create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F', 'T'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
);
INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('joao da silva', '1950-05-15', 'T', 75.50, 1.80, 'Brasil'),  
('silva e silva', '1960-05-15', 'M', 75.50, 1.80, 'Brasil'),   
('Joao', '1970-05-15', 'F', 75.50, 1.80, 'Brasil');            
select * from pessoas;
