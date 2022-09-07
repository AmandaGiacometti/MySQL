create database db_ecommerce; 
use db_ecommerce; 
create table tb_produtos( 
Id bigint(5) auto_increment, 
categoria varchar(20) not null,
marca varchar(20) not null,
produto varchar(20) not null, 
preco decimal(9,2) not null, 
estoque boolean,
primary key(id) 
) ; 
insert into tb_produtos(categoria,marca,produto,preco,estoque) values("Vestuário","Hering","Vestido",120.00,true);
insert into tb_produtos(categoria,marca,produto,preco,estoque) values("Vestuário","Hering","Saia",60.00,true);
insert into tb_produtos(categoria,marca,produto,preco,estoque) values("Vestuário","Hering","Camiseta",30.00,true); 
insert into tb_produtos(categoria,marca,produto,preco,estoque) values("Vestuário","Hering","Short",50.00,true); 
insert into tb_produtos(categoria,marca,produto,preco,estoque) values("Vestuário","Hering","Calça",80.00,false); 
insert into tb_produtos(categoria,marca,produto,preco,estoque) values("Calçados","Havaianas","Chinelo",30.00,true); 
insert into tb_produtos(categoria,marca,produto,preco,estoque) values("Calçados","Havaianas","Sandália",50.00,false); 
insert into tb_produtos(categoria,marca,produto,preco,estoque) values("Calçados","Havaianas","Alpargata",80.00,true); 
select*from tb_produtos where preco>500.00; 
select*from tb_produtos where preco<500.00; 