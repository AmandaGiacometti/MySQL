create database db_farmacia_bem_estar; 
use db_farmacia_bem_estar; 
create table tb_categorias(  
id bigint(5) auto_increment,
localizacao varchar(30) not null,
fabricacao varchar(20) not null,
primary key(id)
);
insert into tb_categorias(localizacao,fabricacao) values("Prateleira","Brasil");
insert into tb_categorias(localizacao,fabricacao) values("Prateleira","Estados Unidos");
insert into tb_categorias(localizacao,fabricacao) values("Prateleira","China");
insert into tb_categorias(localizacao,fabricacao) values("Balcão","Brasil");
insert into tb_categorias(localizacao,fabricacao) values("Balcão","Estados Unidos");  
use db_farmacia_bem_estar; 
create table tb_produtos(  
id bigint auto_increment, 
produto varchar(30) not null,
valor bigint not null,
receitamedica boolean,
apresentacao varchar(20),
categorias_id bigint not null, 
primary key (id),   
foreign key(categorias_id) references tb_categorias (id)   
);  
insert into tb_produtos(produto,valor,receitamedica,apresentacao,categorias_id) values("Dipirona",10,false,"gotas",3);
insert into tb_produtos(produto,valor,receitamedica,apresentacao,categorias_id) values("Xarope",25,false,"líquido",1);
insert into tb_produtos(produto,valor,receitamedica,apresentacao,categorias_id) values("Ritalina",100,true,"comprimidos",5);
insert into tb_produtos(produto,valor,receitamedica,apresentacao,categorias_id) values("Azitromicina",50,true,"comprimidos",4);
insert into tb_produtos(produto,valor,receitamedica,apresentacao,categorias_id) values("Paracetamol",7,false,"comprimidos",2);
insert into tb_produtos(produto,valor,receitamedica,apresentacao,categorias_id) values("Zolpidem",50,true,"comprimidos",5);
insert into tb_produtos(produto,valor,receitamedica,apresentacao,categorias_id) values("Escitalopram",60,true,"gotas",4);
insert into tb_produtos(produto,valor,receitamedica,apresentacao,categorias_id) values("Ibuprofeno",15,false,"drágeas",3);
select*from tb_produtos where valor<50;
select*from tb_produtos where valor between 5 and 60; 
select*from tb_produtos where produto like "%c%"; 
select*from tb_produtos inner join tb_categorias on tb_categorias.id=tb_produtos.categorias_id; 

