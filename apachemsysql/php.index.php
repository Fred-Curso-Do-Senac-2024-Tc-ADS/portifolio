
<!--Intrucao para inserir ao menos 20 registro -->
<!--Intrucao para retornar  todos os registro -->
<!--Intrucao para retornar um registro por id-->
<!--Intrucao para retornar apenas nome e ano de todos-->
<!--Intrucao para atualizar um registro por id-->
<!--Intrucao para para excluir um registro po id-->
<!--Criar a tabela-->

<!--Usuario-->
<!--id -->
<!--nome -->

<!--Favoritos -->
<!--usuario id-- -->
<!--filme id -->



create database usuario;

use usuario;

create table usuario(
    id int auto_increment primary key,
    nome varchar(255)
);

create table favaritos(
    usuario_id int,
    filme_id int
);


-- retorna 1 id id
select * from usuario where id 1;

-- retorna nome e ano de todos 

select titulo, ano from filme;

-- conta a quantidade de registro
select count(*) from filme;


-- atualizar o registro

update filme set titulo = 'teste' where id = 2;



delete from filme where id = 2;;

