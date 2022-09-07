create database db_escola; 
use db_escola; 
create table tb_estudantes( 
Id bigint(5) auto_increment, 
nome varchar(30) not null,
matricula bigint(15) not null,
idade bigint(10) not null,
professore varchar(25) not null,
nota decimal(5,2) not null,
primary key(id) 
) ; 
insert into tb_estudantes(nome,matricula,idade,professore,nota) values("Gabriela Matos",2345,9,"Dulce",9.0);
insert into tb_estudantes(nome,matricula,idade,professore,nota) values("Leticia Rocha",7632,9,"Dulce",8.0);
insert into tb_estudantes(nome,matricula,idade,professore,nota) values("Murilo Santana",4521,9,"Dulce",6.0); 
insert into tb_estudantes(nome,matricula,idade,professore,nota) values("Daniel Pinheiro",5432,8,"Roberto",6.5); 
insert into tb_estudantes(nome,matricula,idade,professore,nota) values("Vanessa Souza",3865,8,"Roberto",7.5); 
insert into tb_estudantes(nome,matricula,idade,professore,nota) values("Beatriz Oliveira",1876,8,"Roberto",5.0); 
insert into tb_estudantes(nome,matricula,idade,professore,nota) values("Rafael Leite",6442,7,"Silvana",8.5); 
insert into tb_estudantes(nome,matricula,idade,professore,nota) values("Gabriel Faria",8764,7,"Silvana",5.5); 
select*from tb_estudantes where nota>7.0; 
select*from tb_estudantes where nota<7.0; 