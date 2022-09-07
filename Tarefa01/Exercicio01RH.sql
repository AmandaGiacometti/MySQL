create database db_rh; 
use db_rh; 
create table tb_colaboradores( 
Id bigint(5) auto_increment, 
nome varchar(30) not null, 
registro bigint(9) not null, 
cargo varchar (20) not null, 
salario decimal(9,2) not null, 
admissao bigint(5) not null, 
primary key(id) 
) ; 
insert into tb_colaboradores(nome,registro,cargo,salario,admissao) values("Aline Alves",456,"Diretora",5000.00,2018);
insert into tb_colaboradores(nome,registro,cargo,salario,admissao) values("Bianca Brandão",876,"Estagiária",1000.00,2022);
insert into tb_colaboradores(nome,registro,cargo,salario,admissao) values("Marina Moraes",432,"Coordenadora",4000.00,2020); 
insert into tb_colaboradores(nome,registro,cargo,salario,admissao) values("João Vitor Silva",290,"Técnico",3000.00,2021); 
insert into tb_colaboradores(nome,registro,cargo,salario,admissao) values("Vinicius Pereira",743,"Estagiário",1000.00,2022); 
select*from tb_colaboradores where salario>2000.00; 
select*from tb_colaboradores where salario<2000.00; 