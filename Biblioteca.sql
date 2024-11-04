create database biblioteca;
use biblioteca;

create table autores (
    id int primary key,
    nome varchar(100),
    nacionalidade varchar(50)
);

create table categorias (
    id int primary key,
    descricao varchar(50)
);

create table livros (
    id int primary key,
    titulo varchar(100),
    ano_publicacao year,
    id_autor int,
    id_categoria int,
    foreign key (id_autor) references autores(id),
    foreign key (id_categoria) references categorias(id)
);
alter table livros add preco decimal(5,2);

alter table categorias add quantidade int;

insert into autores (id, nome, nacionalidade) values
(1, 'Gustavo Goulart', 'britânico'),
(2, 'Jesus Cristo', 'Céu'),
(3, 'Vinicius Junior', 'Brasileiro');

insert into categorias (id, descricao, quantidade) values
(1, 'ficção', 10),
(2, 'não-ficção', 3),
(3, 'fantasia', 5);

insert into livros (id, titulo, ano_publicacao, id_autor, id_categoria, preco) values
(1, 'harry potter e a pedra filosofal', 1997, 1, 3, 39.90),
(2, 'Biblia', 1949, 2, 1, 29.90),
(3, 'O pequeno principe', 1960, 3, 2, 24.90);

insert into autores (id, nome, nacionalidade) values (4, 'gabriel guilhem', 'paraguaio');
insert into livros (id, titulo, ano_publicacao, id_autor, id_categoria, preco) values (4, 'Diario de um banana', 1967, 4, 1, 49.90);

update categorias set descricao = 'romance' where id = 1;

update livros set preco = preco * 1.10 where ano_publicacao < 2000;

update autores set nome = 'gabriel guilhem' where id = 4; 

delete from livros where ano_publicacao < 1950;

delete from categorias where quantidade < 5;

alter table categorias drop column quantidade;

select * from Autores; 
select * from Categorias; 
select * from Livros;
