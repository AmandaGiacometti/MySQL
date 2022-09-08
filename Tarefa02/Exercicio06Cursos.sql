create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;
create table tb_categorias(   
id bigint(5) auto_increment, 
familia varchar(50) not null, 
turmasdisponiveis varchar (30), 
primary key(id) 
);   
insert into tb_categorias(familia,turmasdisponiveis) values("Idiomas latinos","ao vivo"); 
insert into tb_categorias(familia,turmasdisponiveis) values("Idiomas germânicos","ao vivo"); 
insert into tb_categorias(familia,turmasdisponiveis) values("Idiomas eslavos","gravado"); 
insert into tb_categorias(familia,turmasdisponiveis) values("Idiomas leste-asiáticos","ao vivo"); 
insert into tb_categorias(familia,turmasdisponiveis) values("Idiomas africanos sub-saarianos","gravado"); 
use db_curso_da_minha_vida;
create table tb_cursos(   
id bigint auto_increment,  
curso varchar(50) not null, 
valor bigint(10) not null, 
turmasabertas boolean, 
professornativo boolean,
categorias_id bigint not null,  
primary key (id),    
foreign key(categorias_id) references tb_categorias (id)    
);   
insert into tb_cursos(curso,valor,turmasabertas,professornativo,categorias_id) values("Francês",1100,true,true,1); 
insert into tb_cursos(curso,valor,turmasabertas,professornativo,categorias_id) values("Espanhol",900,true,true,1); 
insert into tb_cursos(curso,valor,turmasabertas,professornativo,categorias_id) values("Inglês",450,true,false,2); 
insert into tb_cursos(curso,valor,turmasabertas,professornativo,categorias_id) values("Alemão",1200,false,false,2); 
insert into tb_cursos(curso,valor,turmasabertas,professornativo,categorias_id) values("Russo",1300,true,false,3); 
insert into tb_cursos(curso,valor,turmasabertas,professornativo,categorias_id) values("Chinês Mandarim",700,true,true,4); 
insert into tb_cursos(curso,valor,turmasabertas,professornativo,categorias_id) values("Japonês",600,false,false,4); 
insert into tb_cursos(curso,valor,turmasabertas,professornativo,categorias_id) values("Swahili",1000,true,true,5); 
select*from tb_cursos where valor>500; 
select*from tb_cursos where valor between 600 and 1000;  
select*from tb_cursos where curso like "%j%";  
select*from tb_cursos inner join tb_categorias on tb_categorias.id=tb_cursos.categorias_id;  
select*from tb_cursos inner join tb_categorias where turmasdisponiveis = "gravado";
