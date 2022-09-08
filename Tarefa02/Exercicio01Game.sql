create database db_generation_game_online; 
use db_generation_game_online; 
create table tb_classes(  
Id bigint(5) auto_increment,  
mundo varchar(30) not null, 
fase varchar(30) not null, 
primary key(id)  
) ;  
insert into tb_classes(mundo,fase) values("Mundo Urbano","Escola Abandonada");  
insert into tb_classes(mundo,fase) values("Mundo Urbano","Hospital Macabro");  
insert into tb_classes(mundo,fase) values("Mundo Florestal","Pântano Proibido");  
insert into tb_classes(mundo,fase) values("Mundo Florestal","Jardim Venenoso");  
insert into tb_classes(mundo,fase) values("Mundo Aquático","Lagoa Sem Fundo");  
use db_generation_game_online; 
create table tb_personagens(  
Id bigint auto_increment, 
nome varchar(30) not null, 
tipo varchar(30) not null, 
ataque bigint (10) not null, 
defesa bigint(10) not null, 
classes_id bigint not null, 
primary key (id),   
foreign key(classes_id) references tb_classes (id)   
);  
insert into tb_personagens(nome,tipo,ataque,defesa,classes_id) values("Acquamarine","Sereia",3500,1500,5); 
insert into tb_personagens(nome,tipo,ataque,defesa, classes_id) values("Rumpeltiskin","Gnomo",2500,6000,3); 
insert into tb_personagens(nome,tipo,ataque,defesa, classes_id) values("Lupin","Lobisomem",5000,3500,1); 
insert into tb_personagens(nome,tipo,ataque,defesa, classes_id) values("José","Humano",1500,1500,2); 
insert into tb_personagens(nome,tipo,ataque,defesa, classes_id) values("Legolas","Elfo",5500,4500,3); 
insert into tb_personagens(nome,tipo,ataque,defesa, classes_id) values("Penadinho","Espírito",1000,6000,2); 
insert into tb_personagens(nome,tipo,ataque,defesa, classes_id) values("Drácula","Vampiro",4500,1500,1); 
insert into tb_personagens(nome,tipo,ataque,defesa, classes_id) values("LanHua","Fada",1500,4000,4); 
select*from tb_personagens where ataque>2000; 
select*from tb_personagens where ataque between 1000 and 2000; 
select*from tb_personagens where nome like "%c%"; 
select*from tb_personagens inner join tb_classes on tb_classes.id=tb_personagens.classes_id; 
select nome from tb_personagens inner join tb_classes where classes_id = 2; 