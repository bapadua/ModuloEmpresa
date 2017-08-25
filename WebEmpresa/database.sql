/* CRIA O BANCO */
create database webempresa;
/* SELECIONA  */
use webempresa;
/* TABELA EMPRESA */
create table tbempresa(
id int auto_increment not null,
cnpj varchar(30),
cpf varchar(20)not null,
inscricao_estadual varchar(50),
inscricao_municipal varchar(50),
nome_fantasia varchar(100)not null,
razao_social varchar(150),
/*aqui por fins didáticos eu adicionei o campo razão social depois de ter criado a tabela*/
fundacao date,
data_cadastro datetime default current_timestamp,
contato_principal varchar(100)not null,
ramo_atividade int not null,
website varchar(150),
email varchar(50)not null,
telefone varchar(20)not null,
cadastro_status tinyint unsigned,
primary key(id)
)engine=innodb;
/*DESCREVE A TABELA */
describe tbempresa;
/*MOSTRA TODOS ITENS*/
select * from tbempresa;
/*ADICIONA COLUNA */
alter table tbempresa add column cadastro_status tinyint unsigned after telefone;

alter table tbempresa add column razao_social varchar(150) after nome_fantasia;

/*MODIFICA alter table tbusuarios modify column iduser int auto_increment;*/