create database db_construindo_vidas;
use db_construindo_vidas;

create table tb_categorias(   
id bigint(5) auto_increment, 
categoria varchar(30) not null, 
vendenoatacado boolean, 
primary key(id) 
);   
insert into tb_categorias(categoria,vendenoatacado) values("Bricolagem",true); 
insert into tb_categorias(categoria,vendenoatacado) values("Pisos",true); 
insert into tb_categorias(categoria,vendenoatacado) values("Tintas",false); 
insert into tb_categorias(categoria,vendenoatacado) values("Portas e janelas",false); 
insert into tb_categorias(categoria,vendenoatacado) values("Areia e cimento",false); 
use db_construindo_vidas;
create table tb_produtos(   
id bigint auto_increment,  
produto varchar(50) not null, 
valor bigint(10) not null, 
estoque boolean, 
cor varchar (20),
categorias_id bigint not null,  
primary key (id),    
foreign key(categorias_id) references tb_categorias (id)    
);   
insert into tb_produtos(produto,valor,estoque,cor,categorias_id) values("Chave de fenda (unidade)",10,true,"-",1); 
insert into tb_produtos(produto,valor,estoque,cor,categorias_id) values("Parafuso (unidade)",2,true,"-",1); 
insert into tb_produtos(produto,valor,estoque,cor,categorias_id) values("Piso de madeira (metro quadrado)",50,true,"Marrom escuro",2); 
insert into tb_produtos(produto,valor,estoque,cor,categorias_id) values("Tinta para interior (18 litros)",150,true,"Branco",3); 
insert into tb_produtos(produto,valor,estoque,cor,categorias_id) values("Janela de alumínio (unidade)",400,true,"-",4); 
insert into tb_produtos(produto,valor,estoque,cor,categorias_id) values("Porta de madeira (unidade)",500,false,"Branco",4); 
insert into tb_produtos(produto,valor,estoque,cor,categorias_id) values("Cimento (50 kg)",40,true,"-",5); 
insert into tb_produtos(produto,valor,estoque,cor,categorias_id) values("Areia (20 kg)",5,true,"-",5); 
select*from tb_produtos where valor>100; 
select*from tb_produtos where valor between 70 and 150;  
select*from tb_produtos where produto like "%c%";  
select*from tb_produtos inner join tb_categorias on tb_categorias.id=tb_produtos.categorias_id;  
select*from tb_produtos inner join tb_categorias where categoria = "Bricolagem";
