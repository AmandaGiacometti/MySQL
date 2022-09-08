create database db_cidade_dos_vegetais;
use db_cidade_dos_vegetais;
create table tb_categorias(   
id bigint(5) auto_increment, 
categoria varchar(30) not null, 
fornecedor varchar(20) not null, 
primary key(id) 
);   
insert into tb_categorias(categoria,fornecedor) values("Verduras","Cinturão de Mogi"); 
insert into tb_categorias(categoria,fornecedor) values("Verduras","MST"); 
insert into tb_categorias(categoria,fornecedor) values("Legumes","MST"); 
insert into tb_categorias(categoria,fornecedor) values("Legumes","CEAGESP"); 
insert into tb_categorias(categoria,fornecedor) values("Frutas","CEAGESP"); 
use db_cidade_dos_vegetais;
create table tb_produtos(   
id bigint auto_increment,  
produto varchar(30) not null, 
valorkg bigint(10) not null, 
estoque boolean, 
cor varchar (20),
categorias_id bigint not null,  
primary key (id),    
foreign key(categorias_id) references tb_categorias (id)    
);   
insert into tb_produtos(produto,valorkg,estoque,cor,categorias_id) values("Rúcula",14,true,"Verde escuro",1); 
insert into tb_produtos(produto,valorkg,estoque,cor,categorias_id) values("Espinafre",16,false,"Verde escuro",2); 
insert into tb_produtos(produto,valorkg,estoque,cor,categorias_id) values("Alface",8,true,"Verde claro",2); 
insert into tb_produtos(produto,valorkg,estoque,cor,categorias_id) values("Beterraba",5,false,"Rosa",3); 
insert into tb_produtos(produto,valorkg,estoque,cor,categorias_id) values("Mandioquinha",13,true,"Amarelo",3); 
insert into tb_produtos(produto,valorkg,estoque,cor,categorias_id) values("Batata doce roxa",15,false,"Roxo",4); 
insert into tb_produtos(produto,valorkg,estoque,cor,categorias_id) values("Cenoura",10,true,"Laranja",4); 
insert into tb_produtos(produto,valorkg,estoque,cor,categorias_id) values("Tomate",5,true,"Vermelho",5); 
select*from tb_produtos where valorkg>50; 
select*from tb_produtos where valorkg between 50 and 150;  
select*from tb_produtos where produto like "%c%";  
select*from tb_produtos inner join tb_categorias on tb_categorias.id=tb_produtos.categorias_id;  
select*from tb_produtos inner join tb_categorias where fornecedor = "MST";
