create database db_pizzaria_legal; 
use db_pizzaria_legal; 
create table tb_categorias(  
id bigint(5) auto_increment,  
tipo varchar(30) not null, 
preco bigint (15) not null, 
primary key(id)  
) ;  
insert into tb_categorias(tipo,preco) values("Tradicional",40);  
insert into tb_categorias(tipo,preco) values("Tradicional",45);  
insert into tb_categorias(tipo,preco) values("Tradicional",50);  
insert into tb_categorias(tipo,preco) values("Especial",55);  
insert into tb_categorias(tipo,preco) values("Especial",60);  
use db_pizzaria_legal; 

create table tb_pizzas(  
Id bigint auto_increment, 
sabor varchar(30) not null,
queijo varchar(20), 
bordarecheada boolean,
vegetariana boolean,
categorias_id bigint not null, 
primary key (id),   
foreign key(categorias_id) references tb_categorias (id)   
);  

insert into tb_pizzas(sabor,queijo,bordarecheada,vegetariana,categorias_id) values("Mussarela","Mussarela",false,true,1);
insert into tb_pizzas(sabor,queijo,bordarecheada,vegetariana,categorias_id) values("Frango","Catupiry",false,false,1); 
insert into tb_pizzas(sabor,queijo,bordarecheada,vegetariana,categorias_id) values("Margherita","Parmesão",false,true,2); 
insert into tb_pizzas(sabor,queijo,bordarecheada,vegetariana,categorias_id) values("Palmito","Catupiry",true,true,2); 
insert into tb_pizzas(sabor,queijo,bordarecheada,vegetariana,categorias_id) values("Calabresa","Sem queijo",true,false,3); 
insert into tb_pizzas(sabor,queijo,bordarecheada,vegetariana,categorias_id) values("Abobrinha","Parmesão",true,true,4); 
insert into tb_pizzas(sabor,queijo,bordarecheada,vegetariana,categorias_id) values("Portuguesa","Mussarela",true,false,4); 
insert into tb_pizzas(sabor,queijo,bordarecheada,vegetariana,categorias_id) values("Caprese","Musssarela de Búfala",false,true,5); 
select*from tb_categorias where preco<45;
select*from tb_categorias where preco between 50 and 100; 
select*from tb_pizzas where sabor like "%m%"; 
select*from tb_pizzas inner join tb_categorias on tb_categorias.id=tb_pizzas.categorias_id; 
select*from tb_pizzas inner join tb_categorias where tipo = "Tradicional";

